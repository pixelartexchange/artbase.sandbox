#####
# to run use:
#   $ ruby feudalz/download.rb


require_relative '../artbase'




c = TokenCollection.new( 'feudalz', 4444,
                          token_base: 'https://server.feudalz.io/humanz/{id}' )

range = (0..99)
# c.download_meta( range )

# range = (5392..5999)
c.download_images( range )


puts "bye"
