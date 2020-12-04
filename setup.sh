#!/bin/bash

# Logging stuff.
e_header()  { echo -e "\n\033[1m$@\033[0m"; }
e_success() { echo -e " \033[1;32m✔\033[0m  $@"; }
e_error()   { echo -e " \033[1;31m✖\033[0m  $@"; }
e_arrow()   { echo -e " \033[1;34m➜\033[0m  $@"; }

main (){
    echo " Your pc(Y) or server(N)!"
    read -p  $'\033[1;34m➜\033[0m Please enter options (y/n): ' options

    if [ $options = "y" ] || [ $options = "n" ]
    then
        echo "Opcion elegida " $options
        echo -e "\e[32mStarting setup process...\033[0m"
        apt-get update
        # sh ./install_package/dbeaver.sh
    else
        e_error "Invalid option"
        main
    fi   
}
main
