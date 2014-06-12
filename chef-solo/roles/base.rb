name "base"
description "Base role."
run_list(
  "recipe[ntp]",
  "recipe[postgresql]",
  "recipe[nginx]",
  "recipe[htop]",
  "recipe[openssh]"
)
default_attributes(
  "openssh" => {
    "server" => {
      "password_authentication" => "no"
    }
  }
)

