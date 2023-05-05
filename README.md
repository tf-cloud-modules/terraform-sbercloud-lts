# Sbercloud LTS Terraform module

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
### Log group
```hcl
module "group" {
    source  = "tf-cloud-modules/lts/sbercloud//modules/group"

    group_name  = "lts-test"
    ttl_in_days = 1
}
```

### Log Stream
```hcl
module "stream" {
    source  = "tf-cloud-modules/lts/sbercloud//modules/stream"

    group_id    = "xxxx-xxxxx-xxxxx-xxxx"
    stream_name = "lts-stream-test"
}
```