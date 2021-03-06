#!/bin/bash
set -euo pipefail
logo_print(){
        cat << "EOF"

    ███╗   ███╗██╗███╗   ██╗██████╗     ██╗  ██╗ ██████╗ ███████╗████████╗██╗███╗   ██╗ ██████╗
    ████╗ ████║██║████╗  ██║██╔══██╗    ██║  ██║██╔═══██╗██╔════╝╚══██╔══╝██║████╗  ██║██╔════╝
    ██╔████╔██║██║██╔██╗ ██║██║  ██║    ███████║██║   ██║███████╗   ██║   ██║██╔██╗ ██║██║  ███╗
    ██║╚██╔╝██║██║██║╚██╗██║██║  ██║    ██╔══██║██║   ██║╚════██║   ██║   ██║██║╚██╗██║██║   ██║
    ██║ ╚═╝ ██║██║██║ ╚████║██████╔╝    ██║  ██║╚██████╔╝███████║   ██║   ██║██║ ╚████║╚██████╔╝
    ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═════╝     ╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝
                                                                                         PHP 7.4
    APACHE PHP CONTAINER V1.0
    by MIND HOSTING
    https://mind.hosting

EOF
}
apache_set_servername(){
	echo "ServerName "$VIRTUAL_HOST >> /etc/apache2/apache2.conf
}

if [[ "$1" == apache2* ]]; then
	echo " "
	echo " "
	logo_print
	echo " "
	echo " "
	apache_set_servername
	echo " "
	echo " "
	echo "**** WORDPRESS CONTAINER STARED SUCCESSFULY ****"
	echo "Notice: You website URL https://$VIRTUAL_HOST/"
	echo "Notice: PhpMyAdmin is available under https://$VIRTUAL_HOST/phpmyadmin"
	echo "Notice: Filemanager is available under https://$VIRTUAL_HOST/filemanage"
	echo "Notice: below there will be the instant apache access and error log"
	echo " "
	echo " "
fi
exec "$@"
