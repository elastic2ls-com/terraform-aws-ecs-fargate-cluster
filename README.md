# Terraform module for fargate ECS cluster
<p align="center">
<img src="/assets/img/Logo_box-1-150x150.png">
</p>
<p>&nbsp;</p>

![License](https://img.shields.io/badge/license-Apache-brightgreen?logo=apache) ![Status](https://img.shields.io/badge/status-active-brightgreen.svg?logo=git) [![Sponsor](https://img.shields.io/badge/sponsors-AlexanderWiechert-blue.svg?logo=github-sponsors)](https://github.com/sponsors/AlexanderWiechert/) [![Contact](https://img.shields.io/badge/follow-@Elastic2lscom-blue.svg?logo=facebook&style=social)](https://www.facebook.com/Elastic2lscom-241339337786673/) [![Terraform Registry](https://img.shields.io/badge/download-blue.svg?logo=terraform&style=social)](https://registry.terraform.io/modules/elastic2ls-com/ecs-fargate-cluster/aws/latest)


This module helps you create a fargate ECS cluster. It includes the following:

* ECS cluster
* cloudwatch logs

## Sample Usage
This module requires 2 arguments.
* `cluster_name` simply the name of the cluster
* `log_group` log group name

```
module "terraform-aws-ecs-fargate-cluster" {
source = "git@github.com:elastic2ls/terraform-aws-ecs-fargate-cluster.git"

  cluster_name   = "fargate-ecs"
  log_group      = "fargate-ecs-log-group"
}
```

The module can also be found in the Terraform Registry https://registry.terraform.io/modules/elastic2ls-com/ecs-fargate-cluster/aws/latest.
