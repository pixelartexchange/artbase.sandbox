#####
# to run use:
#   $ ruby binaryapes/download.rb


require_relative '../artbase'




c = TokenCollection.new( 'binaryapes', 10000,
                          token_base: 'ipfs://Qma9FdEsVsnvaUdMhkzFAkJ2MLeHMVFkx878reKYzzSJ4H/{id}.json',
                          format: '24x24',
                          source: '240x240' )

## note: collection token count startin with 1  (NOT 0) !!!
# range = (1112..2000)
# c.download_meta( range )

# range = (681..999)
# c.download_images( range )

range = (1..9)
c.pixelate( range )

puts "bye"
