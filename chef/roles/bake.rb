name "bake"
description "Example role for aqha-example-web-app which installs application."

run_list(
  "recipe[aqha-example-web-app::default]",
  "recipe[aqha-chef-solo-bootstrap::default]"
)

default_attributes(
  "aqha" => {
    "deploy_mode" => "BAKE",
    "bootstrap_role_name" => "deploy",
    "bootstrap_environment_name" => "aws"
  }
)
