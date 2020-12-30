output "key_pair_name" {
  value       = aws_key_pair.key.key_name
  description = "Name of the created AWS key pair."
}

output "private_key" {
  value       = var.public_key == "" ? tls_private_key.key_pair[0].private_key_pem : ""
  description = "The private key when the key pair was created by terraform."
}

output "public_key" {
  value       = aws_key_pair.key.public_key
  description = "The public key."
}