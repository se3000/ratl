module Markers
	
	#begining delimiters
		#content types
			CT_TP = "Content-Type: text\/plain;"
			CT_MA = "Content-Type: multipart\/alternative;"
		#aggregate of content types
			content_types = [CT_TP, CT_MA]
			CONTENT_TYPES = "(?:#{content_types.join("||")})\s*"
		
		#charsets
			CS_ISO881 = "charset=ISO-8859-1"
			CS_USASC = "charset=us-ascii"
		#aggregate of charsets
			charsets = [CS_ISO881, CS_USASC]
			CHARSETS = "(?:#{charsets.join("||")})\s*"

		#content transfer encodings
			CTE = "Content-Transfer-Encoding: quoted-printable"
		#aggregate content transfer encodings
			ct_encodings = [CTE]
			CT_ENCODINGS = "(?:#{ct_encodings.join("||")})\s*"



	#random vars
		DAY_DATE = "(?:3[01]||[012]?[0-9])"
		MONTH_DATE = "(?:1[0-2]||0?[1-9])"
		YEAR_DATE = "(?:198[2-9]||199[0-9]||20[0-9]{2})"

		DAY_ABREV_3_CHAR = "(?:Mon||Tue||Wed||Thu||Fri||Sat||Sun)"
		MONTH_ABREV_3_CHAR = "(?:Jan||Feb||Mar||Apr||May||Jun||Jul||Aug||Sep||Oct||Nov||Dec)"
		TIMES = "[0-2]?[0-9]:[0-5][0-9]"

		EMAIL_CHARS = "[0-9a-zA-Z\#\-\+_\.\!\$%\&'\*\+\-\/=\?\^\`\{\|\}~]"
		EMAIL = "#{EMAIL_CHARS}+@#{EMAIL_CHARS}+\.[a-zA-Z]+"
#########################################
	#Client Delimiters
		GMAIL = /(.*)(^On #{DAY_ABREV_3_CHAR}, #{MONTH_ABREV_3_CHAR} #{MONTH_DATE}, 2[0-9]{3} at #{TIMES} (?:AM||PM), .* <#{EMAIL}> wrote:)(.*)/m
		# On Fri, Jan 7, 2011 at 3:15 PM, Steve Ellis <sellis@pivotallabs.com> wrote:
		IPHONE = /(.*)(On #{MONTH_ABREV_3_CHAR} #{DAY_DATE}, #{YEAR_DATE}, at #{TIMES}, .* <#{EMAIL}> wrote:)(.*)/
		# On Jan 24, 2011, at 8:00 PM, Airbnb <automated@airbnb.com> wrote:
		
		
		MARKERS = [GMAIL, IPHONE]
		
end
