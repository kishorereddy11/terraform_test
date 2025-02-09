resource "aws_vpc" "vpc" {
  cidr_block = "172.31.0.0/16"

}

resource "aws_subnet" "subnet" {
  vpc_id = "vpc-0f4319f8fc9fa30af"
  cidr_block = "172.31.16.0/20"
}

resource "aws_subnet" "subnet1" {
  vpc_id = "vpc-0f4319f8fc9fa30af"
}

import {
  to = "aws_vpc.vpc"
  id= "vpc-0f4319f8fc9fa30af"
}

import {
  to= "aws_subnet.subnet"
  id="subnet-0c19f3c7a2ba2788e"
}

import {
  to="aws_subnet.subnet1"
  id="subnet-07f698b9bb982a341"
}