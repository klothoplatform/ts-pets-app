resource "aws_api_gateway_method" "tfer--gqqeuzygkf-002F-bl8kn5-002F-GET" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "GET"
  operation_name   = "lambda-GET-name-70280"

  request_parameters = {
    "method.request.path.name" = "true"
  }

  resource_id = "bl8kn5"
  rest_api_id = "gqqeuzygkf"
}

resource "aws_api_gateway_method" "tfer--gqqeuzygkf-002F-ckuz78-002F-GET" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "GET"
  operation_name   = "lambda-GET-name-30e2a"

  request_parameters = {
    "method.request.path.name" = "true"
  }

  resource_id = "ckuz78"
  rest_api_id = "gqqeuzygkf"
}

resource "aws_api_gateway_method" "tfer--gqqeuzygkf-002F-dyv6wv-002F-GET" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "GET"
  operation_name   = "lambda-GET-cats-febe1"
  resource_id      = "dyv6wv"
  rest_api_id      = "gqqeuzygkf"
}

resource "aws_api_gateway_method" "tfer--gqqeuzygkf-002F-ee9r0l-002F-GET" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "GET"
  operation_name   = "lambda-GET-dogs-fb226"
  resource_id      = "ee9r0l"
  rest_api_id      = "gqqeuzygkf"
}

resource "aws_api_gateway_method" "tfer--gqqeuzygkf-002F-q3z1k2-002F-POST" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "POST"
  operation_name   = "lambda-POST-open-a1409"
  resource_id      = "q3z1k2"
  rest_api_id      = "gqqeuzygkf"
}

resource "aws_api_gateway_method" "tfer--gqqeuzygkf-002F-txy67q-002F-GET" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "GET"
  operation_name   = "lambda-GET-cats-a720c"
  resource_id      = "txy67q"
  rest_api_id      = "gqqeuzygkf"
}

resource "aws_api_gateway_method" "tfer--gqqeuzygkf-002F-z4hqmd-002F-GET" {
  api_key_required = "false"
  authorization    = "NONE"
  http_method      = "GET"
  operation_name   = "lambda-GET-dogs-d4063"
  resource_id      = "z4hqmd"
  rest_api_id      = "gqqeuzygkf"
}
