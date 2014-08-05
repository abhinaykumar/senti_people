# require 'nokogiri'
# require 'open-uri'

# # Get a Nokogiri::HTML::Document for the page we’re interested in...
# PAGE_URL = "http://kanthi.me/computer"
# doc = Nokogiri::HTML(open(PAGE_URL))

# # Do funky things with it using Nokogiri::XML::Node methods...

# ####
# # Search for nodes by css
# #doc.css('h3.r a').each do |link|
# #puts link.content
# #end

# ####
# # Search for nodes by xpath
# doc.xpath('sectiov#river article#ZvrfBOaHlRmZCUwgmkkm section.post_content ').each do |link|
# puts link.content
# end

# ####
# # Or mix and match.
# # doc.search('h3.r a.l', '//h3/a').each do |link|
# # puts link.content
# # end
class GetBlog

  def initialize()
  end

  def getBlogContent()
    require 'rubygems'
    require 'nokogiri'
    require 'open-uri'

    #parse page content and save the whole to var
    page = Nokogiri::HTML(open('http://kanthi.me/computer'))
    blogcontent = ""

    ###############################################
    #Get the required content based on their Xpath
    ###############################################
    blogcontent = page.css('body.blog section#river article#ZvrfBOaHlRmZCUwgmkkm.post section.post_content p')
    # puts  el.content
    # end
    return(blogcontent)
  end
end
