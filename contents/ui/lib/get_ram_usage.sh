 #!/bin/bash

# Obtener el porcentaje de uso de la RAM
percentage=$(free -m -h -t | grep T | awk '{usage=($3*100)/$2} END {print usage "%"}')

echo $percentage
