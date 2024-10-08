resource "aws_glue_job" "glue" {
  name         = "${var.project-name}-${var.env}-${var.name}"
  description = var.glue-description
  role_arn     = var.glue-role
  glue_version = var.glue-version
  worker_type  = var.glue-worker-type
  number_of_workers =  var.glue-number-of-workers
  max_retries = var.glue-max-retries
  timeout = var.glue-timeout
  security_configuration = var.glue-security-configuration
  execution_property {
    max_concurrent_runs = var.glue-max-concurrent-runs
  }
  command {
    script_location = var.glue-script_location
  }
  default_arguments = var.glue-default-arguments
  tags = var.glue-tags
}