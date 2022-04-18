#####
# to run use:
#   $ ruby papc-punk-ape-pixel-club/download.rb


require_relative '../artbase'


c = TokenCollection.new( 'papc-punk-ape-pixel-club', 5555,
                          token_base: 'ipfs://QmVhgL6LSwxbfKZ9fpjEVbfbkm6XbLhxpe2ita3je39uzT/{id}' )

## note: collection token count startin with 1  (NOT 0) !!!
range = (100..1000)
c.download_meta( range )


## missing no. 13 - retry later!!!! downloaded by "hand" ;-)
##  https://cloudflare-ipfs.com/ipfs/QmZrvYQ1bJG2wCARPTwLMKuTHoqkspNdvc6xGTie1nnb2F/13.png
# range = (93..99)
# c.download_images( range )


puts "bye"
