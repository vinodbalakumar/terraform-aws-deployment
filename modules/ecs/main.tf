resource "aws_ecs_cluster" "jenkins_cluster" {
  name = "jenkins-cluster"
}

resource "aws_ecs_task_definition" "jenkins_task" {
  family = "jenkins-task"

  container_definitions = file("${path.module}/container-definitions.json")

  network_mode = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  cpu    = "256"
  memory = "512"

 # execution_role_arn = var.execution_role_arn
 # task_role_arn      = var.task_role_arn
}
