terraform {
  required_version = "~> 1.0"

  backend "http" {
    address        = "http://tf.localhost/demo"
    lock_address   = "http://tf.localhost/demo"
    unlock_address = "http://tf.localhost/demo"
  }
}
