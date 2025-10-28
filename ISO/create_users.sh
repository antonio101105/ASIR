#!/bin/bash

#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

export DEBIAN_FRONTEND=noninteractive

trap ctrl_c INT
function ctrl_c() {
    echo -e "\n${redColour}[*] Saliendo...${endColour}"
    exit 1
}
# Mostrar ayuda
show_help() {
    echo -e "${greenColour}Uso:${endColour} sudo bash create_users.sh [--apply] [--help]"
    echo -e ""
    echo -e "${greenColou
    r}Opciones:${endColour}"
    echo -e "  ${yellowColour}--apply${endColour}    Crear los usuarios especificados."
    echo -e "  ${yellowColour}--help${endColour}     Mostrar esta ayuda."
}

# Verificar privilegios de root antes de crear
	if [[ $EUID -ne 0 ]]; then
		echo "Se requieren privilegios de root para crear usuarios. Ejecute con sudo y --apply."
		exit 1
	fi

	echo "Creando: $username"
	useradd --create-home --shell /bin/bash "$username"
	# Bloquear contraseña para evitar logins por contraseña local
	passwd -l "$username" >/dev/null 2>&1 || true
done

echo "Operación completada."