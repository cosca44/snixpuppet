class nfs_snidnas01 {

	file { "/mnt/nas_snidnas01":
		ensure => directory,
	}

	mount { "/mnt/nas_snidnas01":
		device => "snidnas01.ima.intra:/nas_fs1",
		fstype => "nfs",
		ensure => "mounted",
		options => "defaults",
		atboot => true,

	}
}
