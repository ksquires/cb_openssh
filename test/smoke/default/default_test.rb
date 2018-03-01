# # encoding: utf-8

# Inspec test for recipe cb_openssh::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/


describe file('/etc/ssh/sshd_config') do
  it { should exist }
  its('content') { should match /^AddressFamily inet/ }
  its('content') { should match /^AllowTcpForwarding yes/ }
  its('content') { should match /^AuthorizedKeysFile %h\/.ssh\/authorized_keys/ }
  its('content') { should match /^ChallengeResponseAuthentication no/ }
  its('content') { should match /^GssapiAuthentication no/ }
  its('content') { should match /^GssapiCleanUpCredentials yes/ }
  its('content') { should match /^HostKey \/etc\/ssh\/ssh_host_rsa_key/ }
  its('content') { should match /^HostKey \/etc\/ssh\/ssh_host_ecdsa_key/ }
  its('content') { should match /^HostKey \/etc\/ssh\/ssh_host_ed25519_key/ }
  its('content') { should match /^LogLevel VERBOSE/ }
  its('content') { should match /^PasswordAuthentication yes/ }
  its('content') { should match /^Protocol 2/ }
  its('content') { should match /^RevokedKeys \/etc\/ssh\/revoked_keys/ }
  its('content') { should match /^Subsystem sftp \/usr\/libexec\/openssh\/sftp-server/ }
  its('content') { should match /^SyslogFacility AUTHPRIV/ }
  its('content') { should match /^TrustedUserCAKeys \/etc\/ssh\/ca_keys/ }
  its('content') { should match /^UsePAM yes/ }
  its('content') { should match /^UsePrivilegeSeparation sandbox/ }
  its('content') { should match /^X11DisplayOffset 10/ }
  its('content') { should match /^X11Forwarding yes/ }
  its('content') { should match /^X11UseLocalhost yes/ }
end
