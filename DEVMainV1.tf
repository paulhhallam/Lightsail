   
provider "aws" {
  region     = "${var.TOPregion}"
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
}


# Create a new Wordpress Lightsail Instance
resource "aws_lightsail_instance" "wp_test" {
  name              = "isitdevops.com"
  availability_zone = "eu-west-2a"
  blueprint_id      = "wordpress_4_9_8"
  bundle_id         = "nano_2_0"
  key_pair_name     = "FromLightsail"
}
  