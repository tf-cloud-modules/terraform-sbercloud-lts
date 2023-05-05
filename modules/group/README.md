# Sbercloud LTS Terraform module (Log Group)

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "group" {
    source  = "tf-cloud-modules/lts/sbercloud//modules/group"

    group_name  = "lts-test"
    ttl_in_days = 1
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.10.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_lts_group.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/lts_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_group_name"></a> [group\_name](#input\_group\_name) | Specifies the log group name. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the log group resource. | `string` | `null` | no |
| <a name="input_ttl_in_days"></a> [ttl\_in\_days](#input\_ttl\_in\_days) | Specifies the log expiration time(days). | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
<!-- END_TF_DOCS -->