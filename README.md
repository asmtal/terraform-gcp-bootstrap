# Terraform GCP Bootstrap

`terraform-gcp-bootstrap` was created as a means of quickly deploying POCs to Google Cloud Platform using Terraform. It has features for:

* Provider defaults defaults for project and region/zone
* Enabling APIs & Services
* Configuring Remote state

This project assumes you have some basic Terraform and GCP knowledge. If not, use the below links to get familiar:

* [Terraform Introduction](https://www.terraform.io/intro)
* [Get Started - Google Cloud](https://learn.hashicorp.com/collections/terraform/gcp-get-started)
* [The Core Terraform Workflow](https://www.terraform.io/intro/core-workflow)
* [Google Cloud Platform Provider](https://registry.terraform.io/providers/hashicorp/google/latest/docs)

## Prerequisites

1. A GCP project with billing enabled
2. [Terraform](https://www.terraform.io/downloads)
3. [gcloud CLI](https://cloud.google.com/sdk/docs/install)

## Installation

Use [Git](https://git-scm.com/) to clone the repository.

```
git clone https://github.com/mscribellito/terraform-gcp.git
```

You can also use the GitHub CLI, GitHub Desktop or Download ZIP.

Note: This project assumes the use of `gcloud` for [authentication](https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/provider_reference#authentication).

## Variables

Copy `terraform.tfvars.example` and rename to `terraform.tfvars`. Set your project and other variables in this file.

| Name | Description | Type | Default | Required
| ---- | ----------- | ---- | ------- | --------
| project | The default project to manage resources in. | `string` |  n/a | yes
| region | The default region to manage resources in. | `string` | `us-east1` | no
| zone | The default zone to manage resources in. | `string` | `us-east1-b` | no
| apis_services | List of APIs & Services to enable. | `list(string)` | <pre>[<br>  "compute.googleapis.com"<br>]</pre> | no

When you create a GCP project using the Cloud Console or Google Cloud CLI, some APIs and services are [enabled by default](https://cloud.google.com/service-usage/docs/enabled-service#default). The `apis_services` variable can be overridden to enable additional services.

## Remote State

Uncomment the contents of `state.tf` to configure [remote state](https://www.terraform.io/language/settings/backends/gcs).

## Deploy Your Infrastructure

Follow the "Write -> Plan -> Apply" workflow to author infrastructure as code, preview changes before applying & provision reproducible infrastructure.

## Cleanup After Yourself

Be sure to cleanup resources so you don't get a surprise bill! :slightly_smiling_face:

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)