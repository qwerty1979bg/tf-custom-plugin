# Terraform custom plugin

This example shows how to compile and use a [custom Terraform provider plugin](https://github.com/petems/terraform-provider-extip)

- [x]  Create a Vagrant box that contains the GO environment
- [x]  Download and (cross)compile the module

1. [Install Vagrant](https://www.vagrantup.com/intro/getting-started/install.html)
2. [Install VirtualBox](https://www.virtualbox.org/manual/ch02.html)
```
$ vagrant up
$ echo "Hope for the best"
$ vagrant destroy
```

- [x]  Create a sample TF code
- [x]  Install the custom TF module

1. [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)  
```
$ terraform init
$ terraform apply
$ echo "High Five !"
$ terraform destroy
```

## Kitchen test:

The following instructions assume you start with a clean Ubuntu 16.04 LTS Xenial VM  
(for example `ami`&#8209;`0f9351b59be17920e` in `us-east-1`)

1. Install the dependency hell:
```
$ sudo apt update
$ sudo apt install -y less gcc ruby ruby-dev make g++ git unzip python-pip
$ sudo gem install bundler
```
2. [Install Terraform](https://www.terraform.io/intro/getting-started/install.html)  
3. Clone this repository and `cd` into it.
4. Run the following:
```
$ bundle install
$ bundle exec kitchen test
```