resource "aws_api_gateway_rest_api" "tfer--gqqeuzygkf_petsApp-486b01a" {
  api_key_source               = "HEADER"
  binary_media_types           = ["application/octet-stream", "image/*"]
  disable_execute_api_endpoint = "false"

  endpoint_configuration {
    types = ["EDGE"]
  }

  minimum_compression_size = "-1"
  name                     = "petsApp-486b01a"
}
