#!/usr/bin/env bash

go get -u -v github.com/petems/terraform-provider-extip
go install github.com/petems/terraform-provider-extip/
cp ~/go/bin/terraform-provider-extip /vagrant/ && echo "Success: Module built. You can run 'vagrant destroy' now"

sudo poweroff
