require 'dependencies.rb'

describe Ratl do
  before do
		@text = <<-TEXT_MESSAGE
				
				<hi>
				
				On Fri, Jan 7, 2011 at 3:15 PM, Steve Ellis <sellis@pivotallabs.com> wrote:
				
				> test comment
				>
				>
				> On Fri, Jan 7, 2011 at 3:09 PM, ahiruubdfsu <notifications@rr.redroverhq.us> wrote:
				>
				>> ahiruubdfsu commented on your item.
				>>
				>> ahiruubdfsu wrote:
				>>
				>> "what is the problem?"
				>>
				>> You can contribute to this conversation at
				>> http://rr.redroverhq.us/feeds/BFhf<http://u5347.sendgrid.org/wf/click?c=
				=3DmtaC%2BHUoXVlT%2Fwsox7KDNmqfXM0HDaRARRkFtmmm4ZX01%2BMxu%2FGqfecLLs3HN1O1=
				&rp=3DYqYBTUd6hvBkY7v0xB2vvcKQ8T5938jStwFdtJxJP0WML2SueBH0z9Del%2B%2FNGWRP&=
				up=3DvUG8URSebFjv1oz0kxNtIZyaOLaXxrku1F%2B%2BfnYcD1%2FBR9PcqNjA7OoI4nEoFH%2=
				Bl&u=3DFQhH_bm3RpiDsiguFL51Kw%2Fh0>.
				>>
				>>
				>> This message was intended for sellis@pivotallabs.com. If you do not wish
				>> to receive this type of email in the future, you can unsubscribe<http://=
				u5347.sendgrid.org/wf/click?c=3DmtaC%2BHUoXVlT%2Fwsox7KDNpMW7wEbHz28cqJrzbH=
				JSw%2Fq50IwnDRPjwuogzq6Bu%2BAQr084zeYQd%2FTQ5qs7RTAXCcsKGcIsnlta5EShHsWmyfU=
				fS1Lz%2F3yPrsAbul8COzZcNfpcnpeGVJBdEBfYNflkw%3D%3D&rp=3DYqYBTUd6hvBkY7v0xB2=
				vvcKQ8T5938jStwFdtJxJP0WML2SueBH0z9Del%2B%2FNGWRP&up=3DvUG8URSebFjv1oz0kxNt=
				IZyaOLaXxrku1F%2B%2BfnYcD1%2FBR9PcqNjA7OoI4nEoFH%2Bl&u=3DFQhH_bm3RpiDsiguFL=
				51Kw%2Fh1>from this type of notification.
				>
				>
				>
TEXT_MESSAGE

		@html = <<-HTML_MESSAGE 					
				&lt;hi&gt;<br><br><div class=3D"gmail_quote">On Fri, Jan 7, 2011 at 3:15 PM=
				, Steve Ellis <span dir=3D"ltr">&lt;<a href=3D"mailto:sellis@pivotallabs.co=
				m">sellis@pivotallabs.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
				il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
				t:1ex;">
				test comment<div><div></div><div class=3D"h5"><div><br><br><div class=3D"gm=
				ail_quote">On Fri, Jan 7, 2011 at 3:09 PM, ahiruubdfsu <span dir=3D"ltr">&l=
				t;<a href=3D"mailto:notifications@rr.redroverhq.us" target=3D"_blank">notif=
				ications@rr.redroverhq.us</a>&gt;</span> wrote:<br>
				<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
				x #ccc solid;padding-left:1ex">
				ahiruubdfsu commented on your item.
				
				<br>
				<br>
				
				ahiruubdfsu wrote:
				
				<br>
				<br>
				
				&quot;what is the problem?&quot;
				
				<br>
				<br>
				
				You can contribute to this conversation at <a href=3D"http://u5347.sendgrid=
				.org/wf/click?c=3DmtaC%2BHUoXVlT%2Fwsox7KDNmqfXM0HDaRARRkFtmmm4ZX01%2BMxu%2=
				FGqfecLLs3HN1O1&amp;rp=3DYqYBTUd6hvBkY7v0xB2vvcKQ8T5938jStwFdtJxJP0WML2SueB=
				H0z9Del%2B%2FNGWRP&amp;up=3DvUG8URSebFjv1oz0kxNtIZyaOLaXxrku1F%2B%2BfnYcD1%=
				2FBR9PcqNjA7OoI4nEoFH%2Bl&amp;u=3DFQhH_bm3RpiDsiguFL51Kw%2Fh0" target=3D"_b=
				lank">http://rr.redroverhq.us/feeds/BFhf</a>.
				
				<br>
				<br>
				
				This message was intended for <a href=3D"mailto:sellis@pivotallabs.com" tar=
				get=3D"_blank">sellis@pivotallabs.com</a>.  If you do not wish to receive t=
				his type of email in the future, you can <a href=3D"http://u5347.sendgrid.o=
				rg/wf/click?c=3DmtaC%2BHUoXVlT%2Fwsox7KDNpMW7wEbHz28cqJrzbHJSw%2Fq50IwnDRPj=
				wuogzq6Bu%2BAQr084zeYQd%2FTQ5qs7RTAXCcsKGcIsnlta5EShHsWmyfUfS1Lz%2F3yPrsAbu=
				l8COzZcNfpcnpeGVJBdEBfYNflkw%3D%3D&amp;rp=3DYqYBTUd6hvBkY7v0xB2vvcKQ8T5938j=
				StwFdtJxJP0WML2SueBH0z9Del%2B%2FNGWRP&amp;up=3DvUG8URSebFjv1oz0kxNtIZyaOLaX=
				xrku1F%2B%2BfnYcD1%2FBR9PcqNjA7OoI4nEoFH%2Bl&amp;u=3DFQhH_bm3RpiDsiguFL51Kw=
				%2Fh1" style=3D"color:#555" target=3D"_blank">unsubscribe</a> from this typ=
				e of notification.
				 =20
				 <img alt=3D"">
				 </blockquote></div><br></div>
				 </div></div></blockquote></div><br>
				 
				 --000e0cdf1796fd46080499b2f7a9--
HTML_MESSAGE
	end

  describe ".splitter" do
		it "builds a new Ratl and calls splitter on it" do
			ratl = mock(:ratl)
			
			Ratl.should_receive(:new).with(@text).and_return(ratl)
			ratl.should_receive(:splitter)

			Ratl.splitter(@text)
		end
  end

	describe "#splitter" do
		before do
			@message = "<hi>"
			@ratl = Ratl.new(@text)
			@parsed = @ratl.splitter
		end

		it "pulls the text above the first marker" do
			marker = "On Fri, Jan 7, 2011 at 3:15 PM, Steve Ellis <sellis@pivotallabs.com> wrote:"

			@ratl.splitter.should_not include marker
			@ratl.splitter.should include @message 
		end

		it "removes the content-type and mime encodings" do
			marker = /Content-Type: text\/plain; charset=ISO-8859-1\s*Content-Transfer-Encoding: quoted-printable/

			@ratl.splitter.should_not =~ marker
		end

		it "uses the shortest possible message" do
			@parsed.should include @message 
			@parsed.should_not include "test comment"
		end

		it "strips leading/trailing whitespace" do
			@parsed.should include @message
			@parsed.should_not =~ /\s#{@message}\s/
		end
	end
end
