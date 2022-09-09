#!/bin/bash

cd `dirname $0`   

go install github.com/tougee/jvm/cmd/gomobile
go install github.com/tougee/jvm/cmd/gobind
