##########################################################
# Default Variables
##########################################################
variable "project-name" {
  description = "Project (client) name"
  type        = string
}
variable "env" {
  description = "Current environment"
  type        = string
}
variable "name" {
  description = "Resource name"
  type        = string
}
variable "aws-region" {
  description = "AWS region name"
  type        = string
}
variable "deployment-role" {
  type        = string
}
##########################################################
# Variables
##########################################################
variable "glue-role" {
}

variable "glue-version" {
}

variable "glue-worker-type" {
}

variable "glue-command-name" {
}

variable "glue-script_location" {
} 