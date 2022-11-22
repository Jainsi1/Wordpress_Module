resource "aws_lb" "Wordpresslb" {
  name               = "Wordpresslb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [var.sg_id]
  subnets            = [var.pubsub1_id, var.pubsub2_id]
}

resource "aws_lb_target_group" "target-elb" {
  name     = "ALB-TG"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.vpcid
}
resource "aws_launch_configuration" "press" {
  name_prefix                 = var.name
  image_id                    = "ami-004d26ba4f9b0d6e1"
  instance_type               = "t2.medium"
  key_name                    = "key1"
  security_groups             = [var.sg_id]
  associate_public_ip_address = true
}

resource "aws_autoscaling_group" "pressgroup" {
  #availability_zones = ["us-east-2a","us-east-2b"]
  desired_capacity          = 2
  max_size                  = 3
  min_size                  = 2
  health_check_grace_period = 300
  vpc_zone_identifier       = [var.pubsub1_id, var.pubsub2_id]
  launch_configuration      = aws_launch_configuration.press.name
  health_check_type         = "ELB"
}
resource "aws_autoscaling_attachment" "bar" {
  autoscaling_group_name = aws_autoscaling_group.pressgroup.name
  alb_target_group_arn   = aws_lb_target_group.target-elb.arn
}



resource "aws_lb_listener" "App-alb" {
  load_balancer_arn = aws_lb.Wordpresslb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target-elb.arn
  }
}
