[![Open in Visual Studio Code](https://classroom.github.com/assets/open-in-vscode-c66648af7eb3fe8bc4f294546bfd86ef473780cde1dea487d3c4ff354943c9ae.svg)](https://classroom.github.com/online_ide?assignment_repo_id=7773515&assignment_repo_type=AssignmentRepo)
# Primer Trabajo de Actuación en Clase
## Consigna

Encontrar los errores en el código de Terraform y corregirlos. El código despliega los siguientes objetos:

* Un VPC
* Dos subnets
* Una instancia EC2
* Una Route Table
* Un Internet Gateway
* Un LoadBalancer, target groups y rules.

## Definición de terminado

El resultado debe ser la web de "Caffé" visualizada desde la url del LoadBalancer obtenida del OUTPUT. 

![caffe img](./img/caffe.png)


________

Errores:
Profile definido como variable, lo cambiamos por "default" tambien lo podriamos haber definido como variable, pero nos parecio que era lo mismo.
En instance definimos la subnet como subnet_id              = aws_subnet.ac1-private-subnet.id debido a que nos quedaba con la subnet por defecto.
Tuvimos que cambiar el certificado de acceso SSH
Se cambio en el Security Group el puerto 88 por 80.
Se cambio el cidr_block = "0.0.0.0/0" de la route table


