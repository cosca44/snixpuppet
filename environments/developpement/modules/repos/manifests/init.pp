class repos {
	case $::operatingsystem {
		'RedHat' : {
			if ($operatingsystemrelease == '5.2') and ($architecture == 'i386')
			{				
				file { "/etc/yum.repos.d/rhel52_i386.repo":
  				owner => root,
  				group => root,
  				mode => 644,
  				source => "puppet:///modules/repos/rhel52_i386.repo"
 				}
			}
			if ($operatingsystemrelease == '5.2') and ($architecture == 'x86_64')
			{
				file { "/etc/yum.repos.d/rhel52_x86_64.repo":
  				owner => root,
  				group => root,
  				mode => 644,
  				source => "puppet:///modules/repos/rhel52_x86_64.repo"
 				}
			}	
		}
		'SLES' : {
			if ($operatingsystemrelease == '11.3') 
                        {
				file { "/etc/zypp/repos.d/SLES11SP3-DVD1.repo":
        	                owner => root,
                	        group => root,
                        	mode => 644,
                        	source => "puppet:///modules/repos/SLES11SP3-DVD1.repo"
				}
			}	
		}
		default : {
            		notice("Module ${module_name} is not supported on ${::operatingsystem}")
        	}
	
	}	

}
