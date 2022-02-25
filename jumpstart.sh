#!/bin/bash

while [ -z $repository_name ]
do
    echo Hello, what is the name of your repository?
    read repository_name
done

gh repo create $repository_name --template "https://github.com/william-glasse/node-starter" --public --clone