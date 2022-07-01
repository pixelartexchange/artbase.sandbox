#####
# to run use:
#   $ ruby etherbears/download.rb


require_relative '../artbase'


c = TokenCollection.new( 'etherbears', 5000,
                     token_base: 'openstore@opensea',
                    format: '24x24',
                    source: '384x384',
)

## note: starting at 1 (and NOT at 0)  !!!


# range = (101..5000)
# c.download_images( range )

range = (1..5000)
c.pixelate( range )


puts "bye"