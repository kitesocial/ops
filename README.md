# Ops

Infrastructure for Kitesocial via Terraform, run on Buildkite.

The Rails application is built as a Docker image and deployed to an ECR. It is run as an ECS Service on Fargate. There is a load balancer in front, configured in a hosted zone on Route 53. The database is run as an RDS Postgres instance.

![Kitesocial production architectural diagram](./diagram.png)

The diagram above is simplified. The configuration in this repository is a bit rough, and there are some details missing.
