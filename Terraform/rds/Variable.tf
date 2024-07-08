# variables.tf

variable "allocated_storage" {
  description = "The allocated storage size for the RDS instance"
  type        = number
  default     = 20
}

variable "storage_type" {
  description = "The storage type for the RDS instance"
  type        = string
  default     = "gp2"
}

variable "engine" {
  description = "The database engine to use"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "The version of the database engine"
  type        = string
  default     = "8.0"
}

variable "instance_class" {
  description = "The instance class for the RDS instance"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "The name of the database"
  type        = string
  default     = "mydatabase"
}

variable "username" {
  description = "The master username for the RDS instance"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "The master password for the RDS instance"
  type        = string
  default     = "admin123"
}

variable "db_subnet_group_name" {
  description = "The name of the DB subnet group"
  type        = string
  default     = "dbsubnet"
}

variable "subnet_ids" {
  description = "The IDs of the subnets for the DB subnet group"
  type        = list(string)
  default     = []
}

variable "rds_sg_id" {
  description = "The IDs of the VPC security groups"
  type        = string
  
}
