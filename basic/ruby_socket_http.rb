
require 'net/http'

h = Net::HTTP.new('ruby-doc.com', 80)
resp = h.get('/', nil)
if resp.message == "OK"
  resp.body.scan(/<a href="(.*?)"/) { |x| puts x }
end
