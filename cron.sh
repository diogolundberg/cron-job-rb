#!/usr/bin/env bash

EB_SCRIPT_DIR=$(/opt/elasticbeanstalk/bin/get-config container -k script_dir)
EB_SUPPORT_DIR=$(/opt/elasticbeanstalk/bin/get-config container -k support_dir)
EB_APP_USER=$(/opt/elasticbeanstalk/bin/get-config container -k app_user)
EB_APP_CURRENT_DIR=$(/opt/elasticbeanstalk/bin/get-config container -k app_deploy_dir)

. $EB_SUPPORT_DIR/envvars
. $EB_SCRIPT_DIR/use-app-ruby.sh

cd $EB_APP_CURRENT_DIR
su -s /bin/bash -c "bundle exec rake RAILS_ENV=production $1" $EB_APP_USER
