resource "aws_secretsmanager_secret" "secret" {
  name              = var.name
  description       = var.description
}

resource "aws_secretsmanager_secret_version" "credential" {
  secret_id         = aws_secretsmanager_secret.secret.id
  secret_string     = jsonencode({
                                  "username": "${var.user_secret}",
                                  "password": "${var.secret_pass}"
                                })
}