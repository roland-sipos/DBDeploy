### This puppet manifest blindly commit ring changes.

group { "puppet":
  ensure => "present",
}

File { owner => 0, group => 0, mode => 0644, }

file { '/etc/motd':
  content => "Welcome to your Vagrant-built virtual machine!
              Managed by Puppet to install and configure RIAK. \n",
}

# TODO: Commit ring changes.
