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

variable "glue-description" {
}

variable "glue-version" {
}

variable "glue-worker-type" {
}

variable "glue-number-of-workers" {
}

variable "glue-max-retries" {
}

variable "glue-security-configuration" {
}

variable "glue-command-name" {
}

variable "glue-script_location" {
}

variable "glue-default-arguments" {
}

variable "glue-timeout" {
}

variable "glue-max-concurrent-runs" {
}

variable "glue-tags" {
}


variable "glue_triggers" {
  type = map(object({
    Type            = string
    Schedule        = string
    StartOnCreation = bool
    Actions         = object({
      Timeout   = number
      Arguments = map(string)
    })
  }))
}