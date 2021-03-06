resource "aws_security_group" "tcp_http_80" {
    name        = "${var.aws_security_group_tcp_http_80_name}"
    description = "${var.aws_security_group_tcp_http_80_description}"
    vpc_id      = "${var.aws_vpc_id}"

    tags {
        Name = "${var.aws_security_group_tcp_http_80_tags_name}"
    }

    ingress {
        from_port   = "${var.aws_security_group_tcp_http_80_ingress_from_port}"
        to_port     = "${var.aws_security_group_tcp_http_80_ingress_to_port}"
        protocol    = "${var.aws_security_group_tcp_http_80_ingress_protocol}"
        cidr_blocks = "${var.aws_security_group_tcp_http_80_ingress_cird_blocks}"
    }
}

resource "aws_security_group" "tcp_ssh_22" {
    name        = "${var.aws_security_group_tcp_ssh_22_name}"
    description = "${var.aws_security_group_tcp_ssh_22_description}"
    vpc_id      = "${var.aws_vpc_id}"

    tags {
        Name = "${var.aws_security_group_tcp_ssh_22_tags_name}"
    }

    ingress {
        from_port   = "${var.aws_security_group_tcp_ssh_22_ingress_from_port}"
        to_port     = "${var.aws_security_group_tcp_ssh_22_ingress_to_port}"
        protocol    = "${var.aws_security_group_tcp_ssh_22_ingress_protocol}"
        cidr_blocks = "${var.aws_security_group_tcp_ssh_22_ingress_cird_blocks}"
    }
}
