data "archive_file" "welcome" {
  type        = "zip"
  source_file = "welcome.py"
  output_path = var.lambda_zip_location
}

resource "aws_lambda_function" "test_lambda" {
  filename      = var.lambda_zip_location
  function_name = "welcome"
  role          = aws_iam_role.lambda_role.arn
  handler       = "welcome.hello"

  # source_code_hash = filebase64sha256("lambda_function_payload.zip")

  runtime = "python3.7"

  # environment {
  #   variables = {
  #     foo = "bar"
  #   }
  # }
}