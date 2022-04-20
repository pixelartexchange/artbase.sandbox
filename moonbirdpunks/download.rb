#####
# to run use:
#   $ ruby moonbirdpunks/download.rb


require_relative '../artbase'




c = TokenCollection.new( 'moonbirdpunks', 2469,
                          token_base: 'https://oofcollective.xyz/assets/mbp/metadata/{id}',
                          format: '50x50',
                          source: '2000x2000' )

range = (100..2468)
# c.download_meta( range )

# c.download_images( range )

c.pixelate( range )


puts "bye"
