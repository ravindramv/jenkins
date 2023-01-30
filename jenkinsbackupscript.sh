#!/bin/bash
cp -R /var/lib/jenkins/* /root/jenkinsbackup
cd /root/jenkinsbackup
rm -rf caches
token="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"
username="ravindramv45"
repoName="jenkinsbackup"
git status
sleep 2
git remote set-url origin https://${token}@github.com/${username}/${repoName}.git
sleep 2
git add .
sleep 2
git commit -m "jenkins backup daily"
sleep 2
git push origin master

