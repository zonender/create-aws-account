###########################################################################
######################### VPC
###########################################################################

resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block

  tags = {
    Name = var.vpc_name
    Env  = var.env
    CreatedBy = "Terraform"
  }
}

######################### IGW #########################

# we are not connecting the the internet, so we will not create a igw.

# resource "aws_internet_gateway" "gw" {
#   vpc_id = aws_vpc.vpc.id
# tags = {
#     Name = var.igw_name
#     Env  = var.env
#   }
# }


######################### SUBNET1 #########################

resource "aws_subnet" "subnet1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet1_cidr_block
  map_public_ip_on_launch = "false"

  tags = {
    Name = local.subnet1_name
    Env  = var.env
    CreatedBy = "Terraform"
  }
}

######################### SUBNET1 ROUTING TABLE

resource "aws_route_table" "subnet1_rtb" {
  vpc_id = aws_vpc.vpc.id

#   route {
#     cidr_block = var.vpc_cidr_block
#     # gateway_id = aws_internet_gateway.main.id # no route to the internet
#   }

    # # for ipv6
#   route {
#     ipv6_cidr_block        = "::/0"
#     egress_only_gateway_id = aws_egress_only_internet_gateway.foo.id
#   }

  tags = {
    Name = "subnet1"
    CreatedBy = "Terraform"
  }
}

# resource "aws_route" "route" {
#   route_table_id            = "${data.aws_route_table.selected.id}"
#   destination_cidr_block    = "10.0.1.0/22"
#   vpc_peering_connection_id = "pcx-45ff3dc1"
# }

######################### ASSOCIATE ROUTING TABLE TO SUBNET1

resource "aws_route_table_association" "subnet1_rtb_association" {
  subnet_id      = aws_subnet.subnet1.id
#   gateway_id     = aws_internet_gateway.foo.id # we are not connecting to the internet
  route_table_id = aws_route_table.subnet1_rtb.id
}

######################### SUBNET2 #########################

resource "aws_subnet" "subnet2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.subnet2_cidr_block
  map_public_ip_on_launch = "false"

  tags = {
    Name = local.subnet2_name
    Env  = var.env
    CreatedBy = "Terraform"
  }
}

######################### SUBNET2 ROUTING TABLE

resource "aws_route_table" "subnet2_rtb" {
  vpc_id = aws_vpc.vpc.id

#   route {
#     cidr_block = var.vpc_cidr_block
#     # gateway_id = aws_internet_gateway.main.id # no route to the internet
#   }

    # # for ipv6
#   route {
#     ipv6_cidr_block        = "::/0"
#     egress_only_gateway_id = aws_egress_only_internet_gateway.foo.id
#   }

  tags = {
    Name = "subnet2"
    CreatedBy = "Terraform"
  }
}

######################### ASSOCIATE ROUTING TABLE TO SUBNET2

resource "aws_route_table_association" "subnet2_rtb_association" {
  subnet_id      = aws_subnet.subnet2.id
#   gateway_id     = aws_internet_gateway.foo.id # we are not connecting to the internet
  route_table_id = aws_route_table.subnet2_rtb.id
}


