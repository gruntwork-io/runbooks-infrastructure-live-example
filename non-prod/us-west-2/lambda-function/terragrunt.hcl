terraform {
  source = "/Users/josh/Code/gruntwork-io/runbooks/testdata/test-fixtures/tofu-modules/lambda-function"
}

include "root" {
  path   = find_in_parent_folders("root.hcl")
  expose = true
}

inputs = {
  function_name = "my-lambda"
  memory_size = 256
  runtime = "python3.13"
}
