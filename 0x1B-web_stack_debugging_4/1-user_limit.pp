# script which makes it possible to login with the holberton user and open file without error
exec {'open any files without limits':
  command => 'sed -rie \'s/(holberton (hard|soft) nofile).*/\1 1000/gi\' /etc/security/limits.conf',
  path    => 'usr/bin/:/bin/'
}
