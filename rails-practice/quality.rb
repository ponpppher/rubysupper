require 'rubygems'
require 'cgi'

cgi = CGI.new

cgi.out("type"=> "text/html", "charset" => "utf-8"){
   get = cgi["quality"]

    "<html>
        <body>
          <p>品質が悪い情報です</p><br>
          string:#{get}
        </body>
      </html>"
}
