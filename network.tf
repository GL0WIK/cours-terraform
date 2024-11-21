data "aws_vpc" "default" {
  default = true
}

data "aws_subnet" "az_1a" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
  filter {
    name   = "availability-zone"
    values = ["eu-west-1a"]
  }
}

data "aws_subnet" "az_1b" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
  filter {
    name   = "availability-zone"
    values = ["eu-west-1b"]
  }
}

data "aws_subnet" "az_1c" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default.id]
  }
  filter {
    name   = "availability-zone"
    values = ["eu-west-1c"]
  }
}