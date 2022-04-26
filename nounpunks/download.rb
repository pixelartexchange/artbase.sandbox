#####
# to run use:
#   $ ruby nounpunks/download.rb


require_relative '../artbase'


c = TokenCollection.new( 'nounpunks', 9969,
                     token_base: 'ipfs://QmUELPeLor9x6369uFnH2yXxhyJ5xQ2agDwPCHiNdP4LYA/{id}.json',
                    format: '24x24',  ## note: 16px overflow (16px+24*41px)!!!
                    source: '1000x1000',
)

## note: starting at 1 (and NOT at 0)  !!!

range = (101..1000)
# c.download_meta( range )


# range = (101..5000)
# c.download_images( range )

# range = (101..5000)
c.pixelate( range )


puts "bye"