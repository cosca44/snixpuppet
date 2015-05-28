class ntp::redhat {

# Install NTP service
    package {
        'ntp' :
            ensure => 'installed'
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
   
# Be sure that service is set to start at boot
    service {
        'ntpd' :
            enable => false,
#	    ensure => running,
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
