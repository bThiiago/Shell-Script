#inicia em 1
var_control=1

while true;
do
# para verificar se um valor é maior que outro
if [ $var_control -gt 5 ]; then
break
fi

echo Valor $var_control

# Incrementando var_control, funciona apenas em Bash
(( var_control++ ))
done

