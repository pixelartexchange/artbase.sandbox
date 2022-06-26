#####
# to run use:
#   $ ruby marilyn-series/convert.rb


require_relative '../artbase'



collection = 'marilyn-series'

convert_images( collection, from: 'jpg', to: 'png', dir: 'token-i' )

puts "bye"

