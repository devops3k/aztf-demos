variable "storage-account-name-prefix"{
    description = "Name of the storage acct"
    default = "jazzwall"
}
output "storage-account-name-prefix" {
  value = var.storage-account-name-prefix
}