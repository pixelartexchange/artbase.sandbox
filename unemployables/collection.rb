

###
#    see https://unemployables.io
#        https://opensea.io/collection/unemployables
#        https://twitter.com/unemployables


##
##  todo - check if 5000 items or 5001 (-- why 5001 on open sea listed?)
##        a:  includes dummy no. 0 (see below)

## yes,  no.0  is a dummy (forever "unrevealed")
##   see https://opensea.io/assets/ethereum/0xe0be388ab81c47b0f098d2030a1c9ef190691a8a/0

## note: #0  return 404 not found!!! - skip officially - why? why not?


COLLECTION = TokenCollection.new( 'unemployables', 5000,
                          token_base: 'ipfs://QmZxDanojLvjgzhMe1gBaNdMygqh743xYH4uZpcZVshxUc/{id}',
                          format: '24x24',
                          source: '600x600',
                          offset: 1 )
