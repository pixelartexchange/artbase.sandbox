#####
# to run use:
#   $ ruby binaryapes/download.rb


require_relative '../artbase'




c = TokenCollection.new( 'binaryapes', 10000,
                          token_base: 'ipfs://Qma9FdEsVsnvaUdMhkzFAkJ2MLeHMVFkx878reKYzzSJ4H/{id}.json' )

## note: collection token count startin with 1  (NOT 0) !!!
# range = (927..999)
# c.download_meta( range )

range = (460..999)
c.download_images( range )


puts "bye"
