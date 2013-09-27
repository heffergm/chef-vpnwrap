name             'vpnwrap'
maintainer       'Mapzen'
maintainer_email 'grant@mapzen.com'
license          'All rights reserved'
description      'Installs/Configures openvpn'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.2'

%w{ apt openvpn }.each do |dep|
    depends dep
end

%w{ ubuntu }.each do |os|
    supports os
end

