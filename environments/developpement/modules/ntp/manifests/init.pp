class ntp {
# Suivant l'OS, on applique la bonne conf
    case $::operatingsystem {
        'RedHat' : { include ntp::redhat }
	'Debian' : { include ntp::debian }
        'sles' : { include ntp::sles }
        default : {
            notice("Module ${module_name} is not supported on ${::operatingsystem}")
        }
    }
}
