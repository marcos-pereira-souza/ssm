
#!/bin/bash

echo "- Inicio do script de reagendamento"

deployment="blue"
minutes=0
hours=17
dayOfMonth=22
month=12
dayOfWeek=?
year=*

filter="-bg-"

if echo "$deployment" | grep -i -w "blue"
then
    filter="?contains(Name, \`-bg-\`) == \`true\`"
else
    filter="?ends_with(Name, \`Prod\`) == \`true\`"
fi

echo "- Consulta eventos: Artefatos: Angular - Implantação: ${deployment} - Critério: '${filter}'"

aws events list-rules --query "Rules[?Name!=\`null\`]|[${filter}].[Name,Description]" --output text  \
        | awk '{print $1 "|" $2}' \
        | while read ruleNameAndDescription;
        do     
                ruleName=$(echo "$ruleNameAndDescription" | awk -F'|' '{print $1}' 2>&1)
                description=$(echo "$ruleNameAndDescription" | awk -F'|' '{print $2}' 2>&1)
 
                echo "# ${ruleName}/${description} : Reagendamento para 'cron(${minutes} ${hours} ${dayOfMonth} ${month} ${dayOfWeek} ${year})'"
                # aws cli bug, necessario envio da descricao para nao ficar em branco apos atualizacao
                aws events put-rule --name ${ruleName} --description $description --schedule-expression "cron(${minutes} ${hours} ${dayOfMonth} ${month} ${dayOfWeek} ${year})"
        done

echo "- Fim do script de reagendamento"
    


