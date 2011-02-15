require 'dependencies.rb'

describe Markers do
	describe "MARKERS" do
		context "matching emails" do
			it "correctly parses GMAIL" do
				message = "Here \nOn Fri, Jan 7, 2011 at 3:09 PM, ahiruubdfsu <notifications@rr.redroverhq.us> wrote:\nstuff"
				parsed = message.split(/#{Markers::GMAIL}/s)
				
				parsed.size.should == 2
				parsed.should include "Here \n"
				parsed.should include "\nstuff"
			end
			it "correctly parses IPHONE" do
				message = "start\nOn Jan 24, 2011, at 8:00 PM, Airbnb <automated@airbnb.com> wrote:\nAIRBNB FTW"
				parsed = message.split(/#{Markers::IPHONE}/s)
				
				parsed.size.should == 2
				parsed.should include "start\n"
				parsed.should include "\nAIRBNB FTW"
			end
		end
	end
end
