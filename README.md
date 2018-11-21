# Terraform custom plugin

This example shows how to compile and use a [custom Terraform provider plugin](https://github.com/petems/terraform-provider-extip)

- [x]  Create a Vagrant box that contains the GO environment
- [x]  Download and (cross)compile the module

```
$ vagrant up
$ echo "Hope for the best"
$ vagrant destroy
```

- [x]  Create a sample TF code
- [x]  Install the custom TF module

```
$ terraform init
$ terraform apply
$ echo "High Five !"
$ terraform destroy
```