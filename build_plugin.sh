#!/usr/bin/env bash

go get -u -v github.com/petems/terraform-provider-extip

for GOOS in darwin linux windows; do
    echo "Building $GOOS-amd64"
    export GOOS=$GOOS
    go build -o $GOPATH/bin/$GOOS\_amd64/terraform-provider-extip github.com/petems/terraform-provider-extip
done

mkdir -p /vagrant/.terraform.d/plugins

cp -R ~/go/bin/* /vagrant/.terraform.d/plugins/ && echo "Success: Module(s) built. You can run 'vagrant destroy' now"

sudo poweroff
