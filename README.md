# Terraform custom plugin

This example shows how to compile and use a [custom Terraform provider plugin](https://github.com/petems/terraform-provider-extip)

- [x]  Create a Vagrant box that contains the GO environment
- [x]  Download and compile the module

```
$ vagrant up
$ echo "Hope for the best"
$ vagrant destroy
```

- [ ]  Create a sample TF code
- [ ]  Install the custom TF module

Notes / Constraints:

Note: Third-party plugins should usually be installed in the user plugins directory, which is located at ~/.terraform.d/plugins on most operating systems and <APPLICATION DATA>\plugins on Windows.

~/.terraform.d/plugins/<OS>_<ARCH>
Note: <OS> and <ARCH> use the Go language's standard OS and architecture names; for example, darwin_amd64.

Provider plugin binaries are named with the scheme terraform-provider-<NAME>_vX.Y.Z, while provisioner plugins use the scheme terraform-provisioner-<NAME>_vX.Y.Z. Terraform relies on filenames to determine plugin types, names, and versions.