########################################################################333
## Project Configurations
region = "us-west-2"
profile = "default"

ec2_servers = {
  kmaster1 = {
    ami_owner           = "309956199498"
    ami_name            = "RHEL-8.8.0_HVM-20231127-x86_64-3-Hourly2-GP3"
    instance_type       = "t3.xlarge"
    volume_size         = "20"
    
    ingress = {
        ssh = {
            description = "computer access to instance"
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_block = ["68.98.28.49/32"]
        }
    }
  }
  knode1 = {
    ami_owner           = "309956199498"
    ami_name            = "RHEL-8.8.0_HVM-20231127-x86_64-3-Hourly2-GP3"
    instance_type       = "t3.xlarge"
    volume_size         = "20"
    
    ingress = {
        ssh = {
            description = "computer access to instance"
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_block = ["68.98.28.49/32"]
        }
    }
  }
  knode2 = {
    ami_owner           = "309956199498"
    ami_name            = "RHEL-8.8.0_HVM-20231127-x86_64-3-Hourly2-GP3"
    instance_type       = "t3.xlarge"
    volume_size         = "20"
    
    ingress = {
        ssh = {
            description = "computer access to instance"
            from_port = 22
            to_port = 22
            protocol = "tcp"
            cidr_block = ["68.98.28.49/32"]
        }
    }
  }
}