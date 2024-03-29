# 1. EC2 AMI
variable "ami_id" {
  type = string
  default = "ami-0e6329e222e662a52"
}
# 2. Number of EC2s
variable "ec2_node_cnt" {
  type = number
  default = 1
}
# 3. SSH Key Name
variable "ssh_key_name" {
  type = string
  default = "no"
}

# 4. Instance type
variable "instance_type" {
  type = string
  default = "t2.micro"
}

# 5. Role Name
variable "role_name" {
  type = string
  default = "EC2_Role"
}
# 6. VPC ID
variable "vpc_id" {
    type = string  
}
# 7. Userdata file
variable "user_data_file" {
  type = string
  default = "yum_node_setup.sh"
}
# 8. EC2 vpc_security_group_ids
variable "vpc_security_group_ids" {
    type = list(string)
    default = [ "value" ]
}
# 9. Volume size
variable "root_sorage" {
  type = number
  default = 20
}

# 10. Master Nodes name
variable "master_names" {
  type = list(string)
  default = ["Master1"]
}
# 11. Master Node instance type
variable "master_type" {
  type = string
  default = "t2.micro"
}

# 12. Worker Nodes names
variable "worker_names" {
  type = list(string)
  default = ["Worker_1","Worker_2"]
}
# 13. Worker nodes instance type
variable "worker_type" {
  type = string
  default = "t2.micro"
}

# 14. Private subnet list
variable "priv_subnet" {
  type = list(string)
  default = [ "test" ]
}

# 15. Private SG
variable "priv_sg" {
  type = string
  default = "test"
}