# aws
aws_region = "us-east-1"

# instance
aws_instance_ami = "ami-c58c1dd3"
aws_instance_type = "t2.micro"
aws_instance_provisioner_connection_type = "ssh"
aws_instance_provisioner_connection_user = "ec2-user"
aws_instance_tags_name = "resume"

# key pair
aws_key_pair_name = "resume"
aws_key_pair_public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDgGV/9juRiPg0/dlt09KIfAjk9vQnHUQOQy5KsbOPwRKooMD7FAJ8/BnSiA61uCwPCBATdRWwLMROre9PIx0hKGcYJPZ25xGvJbw3D1SXITekYmsRBimeXYk9id5YYON5Ps5nSw3ta6v/jMV1V45HFFhgAO6U6K9r7NcLgpGK4pGWDhQfCurgnxL0tZ8+tN7cDYwnmxGZ8S40PvGbBh4WZpvO8CVbcf6oehs3FH5gSilZBY/gX+vN74oeqcdqzNABophz2a49Mzj70NGfFRpCaCINtGcK2OZe5z5pC8lh3pjNh9SNnmW6LzAX9w5KybMzjgPBQLxQtg+FdvrRBBxP5IJ1NOmnD5pXmWUIWk11lcHawrXu6aRgztZDeaE68uFbHmoO1J9so4xBmBL3E9IiekpjFWQRrq9l1ahOK5AlubbIOm7gAsav5M9fRC2jmtAIvU2Tp8DINyA3009/kJ+nPpyswWvUySoUNoCcJlyooA5zJwmdL72hJi7YZmz3DmfWd7C5DZb8YMSIRF6JqDxfUg45aKCCN1rqoplr5QXqjcF2OK9zCHPP1fR38n6LB0NNpPMSGmA5URdHTrf1Cv4iL2YOhfy6jS8XrNBKXYjdG9or0fr0YRwBDCHVq6zOgbL8c2g4KmgBCrCRdGpuWojJ5E2IRb4IpiRYZDmQvlITNfQ== mario.souza@catho.com"

# secutiry_group
aws_security_group_default = "default"

aws_security_group_tcp_http_80_name = "tcp_http_80"
aws_security_group_tcp_http_80_description = "Allow inbound traffic on port 80."
aws_security_group_tcp_http_80_tags_name = "tcp_http_80"
aws_security_group_tcp_http_80_ingress_from_port = 80
aws_security_group_tcp_http_80_ingress_to_port = 80
aws_security_group_tcp_http_80_ingress_protocol = "tcp"
aws_security_group_tcp_http_80_ingress_cird_blocks = ["0.0.0.0/0"]

aws_security_group_tcp_ssh_22_name = "tcp_ssh_22"
aws_security_group_tcp_ssh_22_description = "Allow inbound traffic on port 22."
aws_security_group_tcp_ssh_22_tags_name = "tcp_ssh_22"
aws_security_group_tcp_ssh_22_ingress_from_port =22
aws_security_group_tcp_ssh_22_ingress_to_port =22
aws_security_group_tcp_ssh_22_ingress_protocol = "tcp"
aws_security_group_tcp_ssh_22_ingress_cird_blocks = ["0.0.0.0/0"]

# vpc
aws_vpc_id = "vpc-24702f42"
