class Ratl
	include Markers

	attr_accessor :message


	def initialize(message)
		@message = message
	end
	
	def self.splitter(message)
		ratl = Ratl.new(message)	
		ratl.splitter
	end

	def splitter
		parsed_messages = MARKERS.map do |marker|
			parse_client(marker)
		end
		parsed_messages.sort_by(&:size).first.strip
	end

	def parse_client(delimiter)
		@message.split(delimiter).first
	end

	def strip_mime_header
		mime_head = /#{CONTENT_TYPES}\s#{CHARSETS}\s#{CT_ENCODINGS}(.*)/
		message = @message.split(CT_ENCODINGS).last
		message
	end

#	def content_type
#		if @message =~ /Content-Type[:] text\/plain;/
#			"Content-Type: text/plain;"
#		elsif @message =~ /Content-Type: text\/html;/
#			"Content-Type: text/html;"
#		else
#			"unknown"
#		end
#	end
end
