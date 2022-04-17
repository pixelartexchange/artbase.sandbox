#####
# to run use:
#   $ ruby proof-moonbirds/download.rb


require_relative '../artbase'




c = TokenCollection.new( 'proof-moonbirds', 10000,
                          token_base: 'https://live---metadata-5covpqijaa-uc.a.run.app/metadata/{id}' )

range = (307..999)
# c.download_meta( range )

c.download_images( range )


puts "bye"
