#! /usr/bin/env bash

echo -e "\nDownloading Wordpress\n"
curl https://wordpress.org/latest.tar.gz | tar -xvzf - > /dev/null
mv wordpress src

echo -e "\nChanging file permissions to save you some headache"
echo -e "After you finish setting up Wordpress, you might want to chmod o-w the src directory\n"
chmod o+w ./src

echo -e "\nSetting up MySQL data directory\n"
mkdir ./mysql.docker/data

echo -e "\nBe warned... When mysql writes files in the data directory... you will not own them"
echo -e "You will not have permissions to delete them... sudo is your friend\n"
