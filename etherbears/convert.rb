#####
# to run use:
#   $ ruby etherbears/convert.rb


require_relative '../artbase'



collection = 'etherbears'

convert_images( collection, from: 'gif', to: 'png', dir: 'token-i' )

puts "bye"

