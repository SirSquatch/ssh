# Configure SSH Daemon
class ssh::config {

  file { '/etc/ssh/sshd_config':
    ensure  => 'present',
    owner   => 'root',
    group   => 'root',
    mode    => '0400',
    source  => 'puppet:///modules/ssh/sshd_config',
    require => Package['openssh-server'],
  }

}
