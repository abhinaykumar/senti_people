require_relative './lib/get_blog'
require 'sentimental'

#load default Dictionaries
Sentimental.load_defaults

#Set global threshold
Sentimental.threshold = 0.0

#create an instance for usage
analyzer = Sentimental.new(0.0)
ak = GetBlog.new()
blogcontent = ak.getBlogContent()
# p analyzer.get_sentiment blogcontent.to_s.downcase.split(/[\s\<p>\.]+/)
p "#{blogcontent}"
################################
# Positive words: "realize",
#################################
#Negative Words found: "ecstatic", "eventually"
# "have", "","humble","boundlessness"
p analyzer.get_sentiment "#{blogcontent}"
p analyzer.get_score "#{blogcontent}"


