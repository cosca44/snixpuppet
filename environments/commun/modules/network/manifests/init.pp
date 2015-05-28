class network {
 file { "/etc/resolv.conf":
  owner => root,
  group => root,
  mode => 644,
 # source => "puppet:///modules/network/resolv.conf"
   source => "puppet:///dns/resolv.conf"
 }
}
