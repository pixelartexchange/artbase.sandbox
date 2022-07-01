#####
# to run use:
#   $ ruby pridepunks2018/download.rb


require_relative '../artbase'


c = TokenCollection.new( 'pridepunks2018', 9640,
                     token_base: 'ipfs://bafybeihuwyzyxmghhgbk5jvu4rjzwworbnvkfh6ba4pm3xrxb6iovnguhq/{id}',
                    format: '23x23',   ## note: 23x14= 14px overflow!!!
                    source: '336x336',
)

# range = (0..99)
range = (100..999)
# c.download_meta( range )


# c.download_images( range )

c.pixelate( range )


puts "bye"
