class motd::config {

   file { 'motd':
       name    => '/etc/motd',
       mode    => '0664',
       owner   => 'root',
       group   => 'root',
       content => template('/etc/puppet/environments/developpement/modules/motd/templates/motd.erb')
 }
}

class motd {
	include motd::config
}
