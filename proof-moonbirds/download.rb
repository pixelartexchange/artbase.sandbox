#####
# to run use:
#   $ ruby proof-moonbirds/download.rb


require_relative '../artbase'




c = TokenCollection.new( 'proof-moonbirds', 10000,
                          token_base: 'https://live---metadata-5covpqijaa-uc.a.run.app/metadata/{id}',
                          format: '42x42',
                          source: '1008x1008' )

# range = (307..999)
# c.download_meta( range )

##
## ==> 9974 - proof-moonbirds...
## [debug] GET /metadata/9974 uri=https://live---metadata-5covpqijaa-uc.a.run.app/metadata/9974
## !! error: 404 Not Found

# range = (1000..9973)
# c.download_images( range )


range = (1..9973)
c.pixelate( range )


puts "bye"
