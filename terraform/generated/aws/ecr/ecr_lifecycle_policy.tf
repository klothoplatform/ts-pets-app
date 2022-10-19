resource "aws_ecr_lifecycle_policy" "tfer--gg-dev-repo" {
  policy = <<POLICY
{
  "rules": [
    {
      "action": {
        "type": "expire"
      },
      "description": "remove untagged images",
      "rulePriority": 1,
      "selection": {
        "countNumber": 1,
        "countType": "imageCountMoreThan",
        "tagStatus": "untagged"
      }
    }
  ]
}
POLICY

  repository = "gg-dev-repo"
}
