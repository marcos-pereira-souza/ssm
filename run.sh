
#!/bin/bash

echo "- Inicio do script de reagendamento"

channel="IntPJ"
minutes=0
hours=17
dayOfMonth=20
month=5
dayOfWeek=?
year=*

echo "- Consulta todos os eventos"

aws events list-rules --query "Rules[*].[Arn,Name]" --output text \
    | awk '{print $1 "|" $2}' \
    | while read arnAndName;
        do     
            arn=$(echo "$arnAndName" | awk -F'|' '{print $1}' 2>&1)
            ruleName=$(echo "$arnAndName" | awk -F'|' '{print $2}' 2>&1)

            if aws events list-tags-for-resource --resource-arn $arn \
                --query "Tags[*].[Key, Value]"  \
                --output text \
                | grep -q "$channel"; then

                echo "# ${ruleName} : Reagendamento para cron(${minutes} ${hours} ${dayOfMonth} ${month} ${dayOfWeek} ${year})"
                aws events put-rule --name ${ruleName} --schedule-expression "cron(${minutes} ${hours} ${dayOfMonth} ${month} ${dayOfWeek} ${year})"

            fi
        done
    
