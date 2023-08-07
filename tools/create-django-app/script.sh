#!/bin/bash

set -e

BASE_DIR="../../backend/api"

app_name=$1
app_name_capitalized="$(tr '[:lower:]' '[:upper:]' <<< ${app_name:0:1})${app_name:1}"

cd "$(dirname "$0")"
mkdir $BASE_DIR/$app_name
sed -e "s/Appname/$app_name_capitalized/g" -e "s/appname/$app_name/g" ./files/apps.py > $BASE_DIR/$app_name/apps.py
cp ./files/serializers.py $BASE_DIR/$app_name/serializers.py
cp ./files/urls.py $BASE_DIR/$app_name/urls.py
cp ./files/views.py $BASE_DIR/$app_name/views.py

echo "Please add the following line to the urlpatterns in backend/api/urls: path(\"$app_name/\", include(\"api.$app_name.urls\"))"
