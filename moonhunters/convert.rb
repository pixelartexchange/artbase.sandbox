#####
# to run use:
#   $ ruby moon-hunters/convert.rb


require_relative '../artbase'



collection = 'moonhunters'

convert_images( collection, from: 'gif', to: 'png', dir: 'token-i' )

puts "bye"

