#####
# to run use:
#   $ ruby moonbears-nft/download.rb


require_relative '../artbase'



c = TokenCollection.new( 'moonbears-nft', 4000,
                          token_base: 'https://moonbears.mypinata.cloud/ipfs/QmXMJ8Eysnx9Qwk1Wozv7UbGKvwr7r7sP2oUg5gwEd3z9R/{id}',
                          format: '34x34',  ## note: overflow of 2px (15x34=510)
                          source: '512x512' )

## note: starting at 1 (and NOT at 0)  !!!

# range = (307..999)
# range = (1..999)
range = (699..4000)
# c.download_meta( range )

# c.download_images( range )

c.pixelate( range )


puts "bye"
