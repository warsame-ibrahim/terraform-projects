variable "vpc_cidr" {
  default        = "10.0.0.0/16"
  description    = "vpc cidr block"
  type           = string
}

variable "Public_subnet_az1_cidr" {
  default        = "10.0.0.0/24"
  description    = "Public subnet az1 cidr block"
  type           = string
}


variable "Public_subnet_az2_cidr" {
  default        = "10.0.1.0/24"
  description    = "Public subnet az2 cidr block"
  type           = string
}


variable "Private_app_subnet_az1_cidr" {
  default        = "10.0.2.0/24"
  description    = "Private app subnet az1 cidr block"
  type           = string
}

variable "Private_app_subnet_az2_cidr" {
  default        = "10.0.3.0/24"
  description    = "Private app subnet az2 cidr block"
  type           = string
}


variable "Private_data_subnet_az1_cidr" {
  default        = "10.0.4.0/24"
  description    = "Private data subnet az1 cidr block"
  type           = string
}

variable "Private_data_subnet_az2_cidr" {
  default        = "10.0.5.0/24"
  description    = "Private data subnet az2 cidr block"
  type           = string
}

variable "Database_snapashot_identifier" {
  default        = "arn:aws:rds:us-east-1:882763310310:snapshot:fleetcart-final-snapshot"
  description    = "This is the Arn of my fleetcart snapshot"
  type           = string
}

variable "Database_instance_class" {
  default        = "db.t2.micro"
  description    = "this is the instance class of my db"
  type           = string
}

variable "Database_instance_identifier" {
  default        = "warsame-identifier"
  description    = "this is the instance indetifier of my db"
  type           = string
}

variable "multi_az_deployment" {
  default        = false
  description    = "create a standby instance"
  type           = bool
}

variable "certificate_arn" {
  default        = "arn:aws:acm:us-east-1:882763310310:certificate/1c6ff738-3628-49db-9007-9ebba9dea049"
  description    = "This is the arn for my certificate ssl "
  type           = string
}

#Asg variables
variable "Launch_template_Name" {
  default        = "warsame-launch-template"
  description    = "name of launch template "
  type           = string
}

variable "ec2_image_id" {
  default        = "ami-02449d9bd0fefa853"
  description    = "Id of the AMI "
  type           = string
}


variable "ec2_instance_type" {
  default        = "t2.micro"
  description    = "ec2 instance type"
  type           = string
}

variable "ec2_key_pair" {
  default        = "warsamekeypair"
  description    = "name of key pair"
  type           = string
}

variable "domain_name" {
  default        = "ckjits.click"
  description    = "domain name "
  type           = string
}

variable "sub_domain_name" {
  default        = "www"
  description    = "sub domain name"
  type           = string
}















