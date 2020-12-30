# TFEv4 key pair

A Terraform module to manage an AWS key pair.

The module can create an AWS key pair based on a provided public key or it can generate a new public/private ssh key pair. In case of the latter the private key will be stored in the terraform state file and assigned to a module output.

## Description

The Terraform configuration provisions:

- AWS key pair.

- TLS public/private key pair (optional).

## Requirements

* Terraform `>= 0.13`
* AWS provider `~> 3.0`
* TLS provider `~> 2.2`

## Input Variables

The available input variables for the module are described in the table below.

| Variable | Type | Default | Description |
| -------- | ---- | ------- | ----------- |
| key_name | `string` | | Name of the AWS key pair to be created. |
| public_key | `string` | `""` | Public key to use for the AWS key pair creation. If not provided a new TLS public/private key pair will be generated. |
| common_tags | `map(string)` | `{}` | Tags to apply to all resources. |

## Outputs

The outputs defined for the module are described in the table below.

| Output | Type | Description |
| -------- | ---- | ----------- |
| key_pair_name | `string` | Name of the created AWS key pair. |
| private_key | `string` | The private key when the key pair was created by terraform. |
| public_key | `string` | The public key. |
