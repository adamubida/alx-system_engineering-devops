# using ApacheBench simulate HTTP requests to a web server to get failed requests and fix our stack
exec { 'webstack-debug':
  command => '/bin/sed -i "s/15/1000/" /etc/default/nginx'
}

exec { 'nginx':
  require => Exec['webstack-debug'],
  command => '/usr/sbin/service nginx restart'
}
