#!/bin/bash

company_name=12345
company=1
name=2

companies=("Devopsfarm IT Solutions" "Avishiv IT Solutions" "WSCube". "PartySpot")

echo "This script will create website for ${company}_${name}."
date
hostname


echo "---------------"
echo ""
echo ""
# step1.   apt install node
sudo apt update
sudo apt install -y nodejs
echo "---------------"
echo ""
echo ""
# step2.   node --version
echo "Let's check node version"
node --version
# step3.   npm --version
echo ""
echo ""
echo "Let's check npm version"
npm --version
# step4.   enable node in global path /etc/profile
echo ""
echo ""
echo "TODO: Lets do it later"


# step5.   mkdir /opt/my_node_app/
if [ -d "/opt/my_node_app" ]; then
    echo "/opt/my_node_app does exist."
else
    echo "/opt/my_node_app does not exist. Creating a new one."
    mkdir /opt/my_node_app
fi

echo ""
echo ""
# read -p "Enter your company name:  " company_name

# echo "Your company name is $company_name"




cp ./main.js /opt/my_node_app/

# replace company name in main.js
# replace COMPANY_LIST with '1. Devopsfarm IT Solutions\n2. Avishiv IT Solutions'
company_string=""
num=1
for company in "${companies[@]}"; do
company_string="${company_string}\n ${num}. ${company}"
num=$((num + 1))
done

echo $company_string
# sed -i "s/COMPANY_LIST/$company_string/g" /opt/my_node_app/main.js
export COMPANY_LIST="$company_string"
# step6.   cd /opt/my_node_app/. && node main.js
cd /opt/my_node_app/ && node main.js