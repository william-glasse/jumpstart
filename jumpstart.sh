!/bin/bash

while [ -z $repository_name ]
do
    echo Hello, what is the name of your repository?
    read repository_name
done

gh repo create $repository_name --template "https://github.com/william-glasse/node-starter" --public --clone

cd $repository_name

echo Replacing references to template repo with your new repository name... 🚧
sed -i '' "s/node-starter/$repository_name/" package.json
echo Succesffully replaced references

npm i