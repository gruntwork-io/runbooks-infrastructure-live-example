terraform {
  source = "/Users/josh/Code/gruntwork-io/runbooks/testdata/test-fixtures/tf-modules/s3-bucket"
}

include "root" {
  path   = find_in_parent_folders("root.hcl")
  expose = true
}

inputs = {
  bucket_name = "my-awesome-bucket"
}
