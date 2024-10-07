resource "aws_glue_job" "example" {
  name         = "${var.project-name}-${var.env}-${var.name}"
  description = var.glue-description
  role_arn     = var.glue-role
  glue_version = var.glue-version# "4.0"
  worker_type  = var.glue-worker-type#"Z.2X"
  number_of_workers =  var.glue-number-of-workers
  max_retries = var.glue-max-retries
  security_configuration = var.glue-security-configuration
  command {
    #name            = var.glue-command-name #"glueray"
    #python_version  = "3.9"
    #runtime         = "Ray2.4"
    script_location = var.glue-script_location#"s3://${aws_s3_bucket.example.bucket}/example.py"
  }

  default_arguments = var.glue-default-arguments
}