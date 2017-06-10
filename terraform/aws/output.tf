output "instance_public_dns" {
    value   = "${aws_instance.resume.public_dns}"
}

output "instance_public_ip" {
    value   = "${aws_instance.resume.public_ip}"
}
