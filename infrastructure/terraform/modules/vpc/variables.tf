# variable "name" {
#   description = "Name to be used on all the resources as identifier"
#   default     = ""
# }

variable "availability_zones" {
  description = "Availaibility zones"
  type        = list(string)
}

variable "cidr" {
  description = "The CIDR block for the VPC"
  default     = "10.10.0.0/16"
}

variable "public_subnets" {
  description = "A list of public subnets inside the VPC"
  type        = list(string)
  default     = []
  # default = ["10.10.11.0/24", "10.10.12.0/24"]
}

variable "private_subnets" {
  description = "A list of private subnets inside the VPC"
  type        = list(string)
  default     = []
  # default = ["10.10.1.0/24", "10.10.2.0/24"]
}

# create_database_subnet_group           = true
# create_database_subnet_route_table     = true
# create_database_internet_gateway_route = true

variable "enable_nat_gateway" {
  description = "Provision NAT Gateways for each of your private networks"
  default     = false
}

variable "single_nat_gateway" {
  description = "Provision a single shared NAT Gateway across all of your private networks"
  default     = false
}

variable "enable_vpn_gateway" {
  description = "To create a new VPN Gateway resource and attach it to the VPC"
  default     = false
}

variable "amazon_side_asn" {
  description = "The Autonomous System Number (ASN) for the Amazon side of the gateway. By default the virtual private gateway is created with the current default Amazon ASN"
  default     = 64620
}

variable "customer_gateways" {
  description = "Maps of Customer Gateway's attributes (BGP ASN and Gateway's Internet-routable external IP address)"
  type        = map(map(any))
  default     = {}
}

#variable "enable_dynamodb_endpoint" {
#  description = "Provision a DynamoDB endpoint to the VPC"
#  default     = false
#}

#variable "enable_s3_endpoint" {
#  description = "Provision an S3 endpoint to the VPC"
#  default     = false
#}

# variable "map_public_ip_on_launch" {
#   description = "Should be false if you do not want to auto-assign public IP on launch"
#   default     = true
# }

# variable "private_propagating_vgws" {
#   description = "A list of VGWs the private route table should propagate"
#   default     = []
# }

# variable "public_propagating_vgws" {
#   description = "A list of VGWs the public route table should propagate"
#   default     = []
# }

variable "tags" {
  description = "A map of tags to add to all resources"
  default     = {}
}

variable "public_subnet_tags" {
  description = "Additional tags for the public subnets"
  default     = {}
}

variable "private_subnet_tags" {
  description = "Additional tags for the private subnets"
  default     = {}
}

variable "public_route_table_tags" {
  description = "Additional tags for the public route tables"
  default     = {}
}

variable "private_route_table_tags" {
  description = "Additional tags for the private route tables"
  default     = {}
}

variable "private_dns_domain" {
  description = "Private DNS domain, e.g. foo.local"
  default     = ""
}

variable "enable_route53" {
  description = "Whether or not to enable route53 zone creation"
  default     = true
}
