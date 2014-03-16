# default path
Exec {
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

include bootstrap
include tools
include apache
include php
include php::pear
include php::pecl
include mysql


class {"composer":
  target_dir      => '/usr/local/bin',
  composer_file   => 'composer',
  download_method => 'curl', # download methods are curl or wget
  logoutput       => false
}
