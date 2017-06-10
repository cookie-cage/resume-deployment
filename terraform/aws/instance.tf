resource "aws_instance" "resume" {
    ami = "${var.aws_instance_ami}"
    instance_type = "${var.aws_instance_type}"
    security_groups = [
        "${aws_security_group.tcp_http_80.name}",
        "${aws_security_group.tcp_ssh_22.name}",
        "${var.aws_security_group_default}"
    ]
    key_name = "${aws_key_pair.resume.key_name}"

    provisioner "remote-exec" {
        inline = [
            "sudo yum update -y",
            "sudo yum install docker -y",
            "sudo service docker start",
            "sudo usermod -aG docker ec2-user",
            "curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > docker-compose",
            "sudo mv docker-compose /usr/local/bin/docker-compose",
            "sudo chmod +x /usr/local/bin/docker-compose",
            "docker-compose --version"
        ]

        connection {
            type = "${var.aws_instance_provisioner_connection_type}"
            user = "${var.aws_instance_provisioner_connection_user}"
            private_key = "${file("${path.module}/.ssh/id_rsa")}"
        }
    }

    provisioner "remote-exec" {
        inline = [
            "sudo yum install git -y",
            "git clone https://github.com/cookie-cage/resume-deployment.git",
            "cd resume-deployment/docker",
            "docker-compose pull",
            "docker-compose build",
            "docker-compose up -d"
        ]

        connection {
            type = "${var.aws_instance_provisioner_connection_type}"
            user = "${var.aws_instance_provisioner_connection_user}"
            private_key = "${file("${path.module}/.ssh/id_rsa")}"
        }
    }

    tags {
        Name = "${var.aws_instance_tags_name}"
    }
}
