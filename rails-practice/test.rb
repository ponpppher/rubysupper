require 'webrick'

server = WEBrick::HTTPServer.new({
  DocumentRoot: '127.0,0,1',
  BindAddress:  '0.0.0.0',
  Port: 8080,
  CGIInterpreter: '/home/koyanosts/.rbenv/shims/ruby'
  #CGIInterpreter: 'usr/local/rvm/rubies/ruby-2.5.1/bin/ruby'
})


server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')
#server.mount('/test', WEBrick::HTTPServlet::FileHandler, 'test.html')
server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')
server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')

server.mount('/givefor.cgi', WEBrick::HTTPServlet::CGIHandler, 'givefor.rb')
server.mount('/quality.cgi', WEBrick::HTTPServlet::CGIHandler, 'quality.rb')
server.mount('/docroot', WEBrick::HTTPServlet::FileHandler, 'docroot.html')
server.start

