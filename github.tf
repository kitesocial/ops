data "aws_ssm_parameter" "github-token" {
  name = "/kitesocial/ops/terraform/GITHUB_TOKEN"
}

provider "github" {
  token = data.aws_ssm_parameter.github-token.value
  owner = "kitesocial"
}
