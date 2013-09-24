# openvpn
default[:openvpn][:key][:size]      = 2048
default[:openvpn][:key][:expire]    = 3650

default[:openvpn][:key][:country]  = 'US'
default[:openvpn][:key][:province] = 'NY'
default[:openvpn][:key][:city]     = 'New York'
default[:openvpn][:key][:org]      = 'SamsungAccelerator'
default[:openvpn][:key][:email]    = 'grant@samsungaccelerator.com'

default[:openvpn][:routes] = [
  "push 'route 10.0.1.0 255.255.255.0'",
  "push 'route 10.0.2.0 255.255.255.0'",
  "push 'route 10.0.3.0 255.255.255.0'"
]

default[:openvpn][:local]           = node[:ipaddress]
default[:openvpn][:proto]           = 'udp'
default[:openvpn][:port]            = '1194'
default[:openvpn][:type]            = 'server'
default[:openvpn][:subnet]          = '10.8.0.0'
default[:openvpn][:netmask]         = '255.255.0.0'
default[:openvpn][:gateway]         = "vpn.#{node[:domain]}"
default[:openvpn][:log]             = '/var/log/openvpn.log'
default[:openvpn][:key_dir]         = '/etc/openvpn/keys'
default[:openvpn][:crl_dir]         = '/etc/openvpn/crl'
default[:openvpn][:signing_ca_key]  = "#{node[:openvpn][:key_dir]}/ca.key"
default[:openvpn][:signing_ca_cert] = "#{node[:openvpn][:key_dir]}/ca.crt"
default[:openvpn][:script_security] = 2
default[:openvpn][:user]            = 'nobody'

