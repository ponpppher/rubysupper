require 'rubygems'
require 'cgi'

cgi = CGI.new

cgi.out("type"=> "text/html", "charset" => "utf-8"){
   get = cgi["givefor"]

    "<html>
        <body>
          <p>自家消費以外の情報です</p><br>
          string:#{get}
        </body>
      </html>"
}
