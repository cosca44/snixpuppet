#Ajouter ici les noeuds a gerer par le PuppetMaster
node 'stestsles11.ima.intra' {
	include sshkeys
	
	include network

	include nfs_snihnas01
	include nfs_snidnas01
	
	include repos
	include ntp
	
}

node 'stestsles02.ima.intra' {
	include sshkeys
	include network
	include repos
	include ntp
}


node 'stestrhel52.ima.intra' {
	include sshkeys
	include network
	include repos
	include ntp
}


node 'stestrhel64.ima.intra' {
	include sshkeys
	include network
	include repos
	include ntp
	
}
