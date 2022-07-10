resource "aws_instance" "webserver" {
   instance_type          = "${var.instance_type}"
   ami                    = "${data.aws_ami.ami.id}"
   count                  = "${var.instance_count}"
   key_name               = "${var.key_name}"
   vpc_security_group_ids = ["${aws_security_group.allow_ports.id}"]
   subnet_id              = "${element(module.vpc.public_subnets,count.index)}"
   user_data              = "${file("scripts/init.sh")}"
   tags                   = "${local.common_tags}"
}