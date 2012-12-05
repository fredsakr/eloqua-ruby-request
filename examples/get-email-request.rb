require File.expand_path(File.join(File.dirname(__FILE__),'..','lib','eloqua-ruby-request'))

# credentials
site = 'site'
user = 'user'
password = 'password'

# search for all emails containing 'Demand'
request = EloquaRequest.new(site, user, password, 'secure.eloqua.com')
response = request.get('/assets/emails?search=*Demand*&page=1&count=50&depth=minimal')

# print the response
puts response
