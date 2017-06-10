# aws
variable aws_region {}

# instance
variable aws_instance_ami {}
variable aws_instance_type {}
variable aws_instance_provisioner_connection_type {}
variable aws_instance_provisioner_connection_user {}
variable aws_instance_tags_name {}

# key pair
variable aws_key_pair_name {}
variable aws_key_pair_public_key {}

# secutiry group
variable aws_security_group_default {}

variable aws_security_group_tcp_http_80_name {}
variable aws_security_group_tcp_http_80_description {}
variable aws_security_group_tcp_http_80_tags_name {}
variable aws_security_group_tcp_http_80_ingress_from_port {}
variable aws_security_group_tcp_http_80_ingress_to_port {}
variable aws_security_group_tcp_http_80_ingress_protocol {}
variable aws_security_group_tcp_http_80_ingress_cird_blocks {
    type = "list"
}

variable aws_security_group_tcp_ssh_22_name {}
variable aws_security_group_tcp_ssh_22_description {}
variable aws_security_group_tcp_ssh_22_tags_name {}
variable aws_security_group_tcp_ssh_22_ingress_from_port {}
variable aws_security_group_tcp_ssh_22_ingress_to_port {}
variable aws_security_group_tcp_ssh_22_ingress_protocol {}
variable aws_security_group_tcp_ssh_22_ingress_cird_blocks {
    type = "list"
}

# vpc
variable aws_vpc_id {}
