resource "aws_glue_trigger" "glue" {
  for_each = var.glue_triggers

  name     = each.key
  type     = each.value.Type
  schedule = each.value.Schedule

  actions {
    job_name = "aws_glue_job.glue.name"  # Replace with your actual Glue job name
  }

  start_on_creation = each.value.StartOnCreation
}