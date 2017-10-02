module ApplicationHelper

	require 'emailnotifier'

	def send_email(subject, message, user, from)	            
	      content = "<html><head><style type='text/css'>body,html,.body{background:#D3D3D3!important;}</style></head><body><container><spacer size='16'></spacer><row><columns large='8'><center><h2>TDCDIGITALMEDIA</h2></center></columns></row><row><columns large='6'><center><h4>Hi! A New request was made by #{user}</h4><br><p>Details: #{message}</p><br></row><row></row></container><body></html>"
	      @notifier = EmailNotifier.new(from, ["thedealerschoice@yahoo.com"], subject, content)
	      status = @notifier.send	      
	end

end
