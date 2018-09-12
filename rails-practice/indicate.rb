require 'cgi'

cgi = CGI.new


cgi.out("type"=> "text/html", "charset" => "UTF-8"){
    get = cgi['input']

    "<html>
        <body>
          <p>input strings is below</p>
            <p> strings : #{get}</p>
       </body>
     </htlm>"
}
