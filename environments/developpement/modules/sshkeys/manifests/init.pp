class sshkeys {
  if $kernel == "Linux" {
    #file { '/root/.ssh/authorized_keys':
    #ensure  => file,
    #backup  => false,
    #content => template("sshkeys/authorized_keys.erb"),
  #}
  #  service {
 #   sshd: ensure => running
  #  }

#	include sshkeys::snixpuppet_sshkeys.pp
	
 ssh_authorized_key { 'root@snixpuppet':
                user => 'root',
                type => 'ssh-rsa',
		key => 'AAAAB3NzaC1yc2EAAAADAQABAAAAgQDcl+b1G5U7Vmp30YZc1DSyVuxUIAZQL3VNVTRt4F/k9n5grcrCpUA3MyKKxrBa1irrxtsSAzXqqeUQE/SHZCt26n+UFyW93On2GOSktkFr/Yw+45orrb2IjZ2ZD3q0zyuptNtX8xP12uCh43CrHaXb5sOpljXa5x90YFJyR3Gttw=='
}
 


 }
}
