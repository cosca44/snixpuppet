class ntp::sles {
# Instal de NTP si non install
    package {
        'ntp' :
            ensure => 'installed'
    }
 
# Configuration du fichier ntp.conf
    file {
        '/etc/ntp.conf' :
            ensure => present,
            source => "puppet:///modules/ntp/${::osfamily}.ntp.conf",
            mode => 644,
            owner => root,
            group => root
    }
    
# Activation du demarrage du serveur au boot + verification que le service soit lance
    service {
        'ntp' :
            enable => true,
	  #  ensure => running, 
    }

 
 
    # Enable ntp service during off production hours
#    cron {
#        'ntp_start' :
#            command => '/etc/init.d/ntpd start',
#            user => root,
#            minute => 0,
#            hour => 0
#    }
 
    # Disable ntp service during on production hours
#    cron {
#        'ntp_stop' :
#            command => '/etc/init.d/ntpd stop',
#            user => root,
#            minute => 3,
#            hour => 0
#    }


}
