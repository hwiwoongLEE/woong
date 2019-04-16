resource "aws_vpc" "user18vpc" {
  	cidr_block="18.0.0.0/16"
  	enable_dns_hostnames=true
  	enable_dns_support=true
  	instance_tenancy="default"

  	tags {
    		Name="user18"
  	}
}
