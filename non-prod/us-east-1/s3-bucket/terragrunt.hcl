terraform {
  source = "https://github.com/gruntwork-io/runbooks/tree/open-tf-module/testdata/test-fixtures/tf-modules/s3-bucket"
}

include "root" {
  path   = find_in_parent_folders("root.hcl")
  expose = true
}

inputs = {
  bucket_name = "dsfasdfasdf"
  tags = {"asdfasdf":"asdfasdf"}
}
