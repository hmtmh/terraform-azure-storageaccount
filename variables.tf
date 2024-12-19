# Variable for the Storage Account Name
variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
  type        = string
  default     = "samplestorageacct001" # Default value (must be globally unique)
}
