#####
# to run use:
#   $ ruby eightbitme/download.rb


require_relative '../artbase'


c = TokenCollection.new( 'eightbitme', 8888,
                     token_base: 'https://eightbit.me/api/token/{id}',
                    format: '24x24',
                    source: '1800x1800',
)

## note: starting with index one (1) and NOT zero (0)

# range = (1..99)
# c.download_meta( range )


# range = (6727..8888)
# c.download_images( range )

range = (201..8888)
c.pixelate( range )


puts "bye"
