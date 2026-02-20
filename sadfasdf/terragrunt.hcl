terraform {
  source = "/Users/josh/Code/gruntwork-io/runbooks/testdata/test-fixtures/tofu-modules/lambda-function"
}

include "root" {
  path   = find_in_parent_folders("root.hcl")
  expose = true
}

inputs = {
  description = ""
  function_name = "asdfasdfasdfasdf"
  handler = "index.handler"
  memory_size = 128
  reserved_concurrency = 0
  runtime = "python3.13"
  timeout = 30
}
