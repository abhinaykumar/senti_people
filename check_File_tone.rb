require 'sentimental'
#############################################################
# Load the default sentiment dictionaries
#############################################################
Sentimental.load_defaults

#############################################################
# And/or load your own dictionaries
#############################################################
Sentimental.load_senti_file('./Custom_Dictionary_For_Tone.txt')

################################
# Set a global threshold
#################################
Sentimental.threshold = 0.1

#################################
# Create an instance for usage:
#################################
analyzer = Sentimental.new

#################################
# Some sample examples for test
#################################
analyzer.get_sentiment 'thats something Awesome'
#=> :positive

analyzer.get_sentiment 'I like ruby'
#=> :neutral

analyzer.get_sentiment 'I really like ruby'
#=> :positive

##############################################
# GET SENTIMENT BY READING OR PARSING A FILE # 
##############################################
string_hash = File.read('./tone_string.txt').to_s

##########################################################
# You can make new analyzers with individual thresholds:
##########################################################
analyzer = Sentimental.new(0.0)

##################################################
# This is to tokenize the whole file's string .
##################################################
p string_hash.to_s.downcase.split(/[\s\.]+/)
p analyzer.get_sentiment "#{string_hash}"
p analyzer.get_score "#{string_hash}"
#=> :positive

analyzer.get_sentiment 'I like ruby'
#=> :neutral

analyzer.get_sentiment 'I really like ruby'
#=> :neutral

# Get the numerical score of a string:
analyzer.get_score 'I love ruby'
#=> 0.925