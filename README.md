# Usage

```
module "kyverno" {

  source = "DNXLabs/eks-kyverno/aws"

  enabled = true
  ui_enabled = true

    policy_reporter_settings = {

        target = {
            slack = {
                "webhook" = "https://hooks.slack.com/services/TH..."
                "minimumPriority" = "warning"
                "sources" = "kyverno"
            }
        }
    }    
}
```

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13 |
| aws | >= 3.13 |
| helm | >= 2.5.1 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Providers

| Name | Version |
|------|---------|
| helm | >= 2.5.1 |
| kubernetes | >= 1.10.0, < 3.0.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create\_namespace | Whether to create Kubernetes namespace with name defined by `namespace`. | `bool` | `true` | no |
| enabled | Enable installation of core Kyverno | `bool` | `false` | no |
| kyverno\_helm\_chart\_name | Kyverno Helm chart name to be installed | `string` | `"kyverno"` | no |
| kyverno\_helm\_chart\_release\_name | Kyverno Helm chart release name to be installed | `string` | `"kyverno"` | no |
| kyverno\_helm\_chart\_repo | Kyverno repository name. | `string` | `"https://kyverno.github.io/kyverno"` | no |
| kyverno\_namespace | Namespace for kyverno helm chart | `string` | `"kyverno"` | no |
| kyverno\_settings | Additional settings which will be passed to the Helm chart values, see https://kyverno.io/docs/installation/#install-kyverno-using-helm. | `any` | `{}` | no |
| mod\_dependency | Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable. | `any` | `null` | no |
| policy\_reporter\_helm\_chart\_name | Policy Reporter Helm chart name to be installed | `string` | `"policy-reporter"` | no |
| policy\_reporter\_helm\_chart\_release\_name | Policy Reporter Helm chart release name to be installed | `string` | `"policy-reporter"` | no |
| policy\_reporter\_helm\_chart\_repo | Policy Reporter repository name. | `string` | `"https://kyverno.github.io/policy-reporter"` | no |
| policy\_reporter\_namespace | Namespace for Policy Reporter helm chart | `string` | `"policy-reporter"` | no |
| policy\_reporter\_settings | Additional settings which will be passed to the Helm chart values, see https://kyverno.io/docs/installation/#install-kyverno-using-helm. | `any` | `{}` | no |
| slack\_enabled | Enables Slack integration | `bool` | `false` | no |
| ui\_enabled | Enables the Policy Reporter UI | `bool` | `false` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->
