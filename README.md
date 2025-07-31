# linux-101-practice

just run below command
chmod +x 1_hello.sh

./1_hello.sh


## Conditional statements

if-else


#hand mkdir: cannot create directory ‘/opt/my_node_app/’: File exists with if-else


if [ -d "/opt/my_node_app" ]; then
  echo "/opt/my_node_app does exist."
else
    mkdir /opt/my_node_app
fi


switch-case
--- TODO for students




## How to read from user/how to create a prompt

read -p "SOme message" variable_name

## how to use variable

`$variable_name`    `${variable_name}`

```bash
echo $variable_name

echo ${variable_name}
```


## How to declare variable
company_name="WSCube"
companies=("Devopsfarm IT Solutions" "Avishiv IT Solutions" "WSCube". "PartySpot")



## how to loop in bash

company_string=""
num=1
for company in "${companies[@]}"; do
company_string="${company_string}\n ${num}. ${company}"
num=$((num + 1))
done

echo $company_string

while


utill