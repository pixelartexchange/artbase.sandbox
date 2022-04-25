#####
# to run use:
#   $ ruby starbirds/download.rb


require_relative '../artbase'


c = TokenCollection.new( 'starbirds', 3000,
                     token_base: 'ipfs://QmfX7KKqsHgdFNZNnVs7xzhMg4M5GmHxdPPJHZ5QSp2MaX/{id}.json',
                    format: '42x42',  ## note:  34px overflow!!!
                    source: '1000x1000',  ## '420x420'
)

# range = (0..99)
# range = (752..2999)
# c.download_meta( range )


# range = (1248..2999)
# c.download_images( range )


###
#  note:
##   special cases - #961  is 420x420 (NOT 1000x1000)
##                   #1073 is 420x420 (NOT 1000x1000)
#                    #1842 is 420x420 (NOT 1000x1000)
#                    #2582 is 420x420 (NOT 1000x1000)

# range = (100..999)
range = (2583..2999)
c.pixelate( range )


puts "bye"
