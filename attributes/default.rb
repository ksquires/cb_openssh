
default['openssh']['server']['address_family'] = 'inet'
default['openssh']['server']['protocol'] = ['2']
default['openssh']['server']['syslog_facility'] = 'AUTHPRIV'
default['openssh']['server']['log_level'] = 'VERBOSE'
default['openssh']['server']['challenge_response_authentication'] = 'no'
default['openssh']['server']['gssapi_authentication'] = 'no'
default['openssh']['server']['gssapi_clean_up_credentials'] = 'yes'
default['openssh']['server']['allow_tcp_forwarding'] = 'yes'
default['openssh']['server']['x11_forwarding'] = 'yes'
default['openssh']['server']['x11_display_offset'] = '10'
default['openssh']['server']['x11_use_localhost'] = 'yes'
default['openssh']['server']['use_privilege_separation'] = 'sandbox'
default['openssh']['server']['subsystem'] = 'sftp /usr/libexec/openssh/sftp-server'
default['openssh']['server']['authorized_keys_file'] = '%h/.ssh/authorized_keys'
default['openssh']['server']['password_authentication'] = 'yes'
