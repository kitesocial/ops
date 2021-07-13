data "aws_ssm_parameter" "buildkite-api-token" {
  name = "/kitesocial/ops/terraform/BUILDKITE_API_TOKEN"
}

provider "buildkite" {
  api_token    = data.aws_ssm_parameter.buildkite-api-token.value
  organization = "kitesocial"
}
