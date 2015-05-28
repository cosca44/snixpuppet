/* 
NTP Module for Puppet
Made by Pierre Mavro
*/
class ntp::debian {
    # Install NTP service
    package {
        'ntp' :
            ensure => 'installed'
    }
 
    # Be sure that service is set to start at boot
    service {
        'ntp' :
            enable => false
    }
 
    # Set configuration file
    file {
        '/etc/ntp.conf' :
            ensure => present,
            source => "puppet:///modules/ntp/${::osfamily}.ntp.conf",
            mode => 644,
            owner => root,
            group => root
    }
 
    # Enable ntp service during off production hours
#    cron {
#        'ntp_start' :
#            command => '/etc/init.d/ntpd start',
#            user => root,
#            minute => 0,
#            hour => 0
#    }
 
#    # Disable ntp service during on production hours
#    cron {
#        'ntp_stop' :
#            command => '/etc/init.d/ntpd stop',
#            user => root,
#            minute => 3,
#            hour => 0
#    }

}
