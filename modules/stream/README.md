# Sbercloud LTS Terraform module (Log Stream)

## How to Configure Terraform for Sbercloud

- [Sbercloud Quickstart](https://cloud.ru/ru/docs/terraform/ug/topics/quickstart.html)
- Add environment variables for terraform authentication in Sbercloud

```
export SBC_ACCESS_KEY="xxxx-xxx-xxx"
export SBC_SECRET_KEY="xxxx-xxx-xxx"
```

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "stream" {
    source  = "tf-cloud-modules/lts/sbercloud//modules/stream"

    group_id    = "xxxx-xxxxx-xxxxx-xxxx"
    stream_name = "lts-stream-test"
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
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_lts_stream.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/lts_stream) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_group_id"></a> [group\_id](#input\_group\_id) | Specifies the ID of a created log group. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the log stream resource. | `string` | `null` | no |
| <a name="input_stream_name"></a> [stream\_name](#input\_stream\_name) | Specifies the log stream name. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
<!-- END_TF_DOCS -->