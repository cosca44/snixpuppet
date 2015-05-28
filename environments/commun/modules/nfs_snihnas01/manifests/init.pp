class nfs_snihnas01 {

	file { "/mnt/nas_snihnas01":
		ensure => directory,
	}

	mount { "/mnt/nas_snihnas01":
		device => "snihnas01.ima.intra:/Q/shares/Sources",
		fstype => "nfs",
		ensure => "mounted",
		options => "defaults",
		atboot => true,

	}
}
