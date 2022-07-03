
###
#  see https://etherbears.club
#      https://opensea.io/collection/etherbears
#      https://twitter.com/ether_bear


COLLECTION = TokenCollection.new( 'bears', 5000,
                    token_base: 'openstore@opensea',
                    format: '24x24',
                    source: '384x384',
                    offset: 1,  ## note: starting at 1 (and NOT at 0)  !!!
)

