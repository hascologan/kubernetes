##############################################################3
## EC2 Instance
resource "aws_instance" "ec2" {
    for_each = var.ec2_servers

    ami             = "ami-05359ef76d3081ccb"
    instance_type   = each.value.instance_type
    monitoring      = "true"
    key_name        = "kube3"


    root_block_device {
      delete_on_termination = true
      encrypted             = false
      volume_size           = "100"
    }

    tags = {
      Name = each.key
    }
}