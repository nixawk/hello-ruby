
# modules/exploits/multi/http/joomla_http_header_rce

version = Gem::Version.new('5.6.3')

vulnerable = false
vulnerable = true if version <= Gem::Version.new('5.4.44')
vulnerable = true if version.between?(Gem::Version.new('5.5.0'), Gem::Version.new('5.5.28'))
vulnerable = true if version.between?(Gem::Version.new('5.6.0'), Gem::Version.new('5.6.12'))

if vulnerable
  print('Target is vulnerable')
else
  print('This module currently does not work against this PHP version')
end
