resource "aws_glue_trigger" "glue" {
  for_each = var.glue-triggers

  name     = "${var.project-name}-${var.env}-${each.key}"
  type     = each.value.Type
  schedule = each.value.Schedule
  start_on_creation = each.value.StartOnCreation
  actions {
    job_name = aws_glue_job.glue.name  # Replace with your actual Glue job name
    arguments = each.value.Actions.Arguments
    timeout   = each.value.Actions.Timeout
  }
}