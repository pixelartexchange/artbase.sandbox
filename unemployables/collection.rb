

###
#    see https://unemployables.io
#        https://opensea.io/collection/unemployables
#        https://twitter.com/unemployables


##
##  todo - check if 5000 items or 5001 (-- why 5001 on open sea listed?)

COLLECTION = TokenCollection.new( 'unemployables', 5001,
                          token_base: 'ipfs://QmZxDanojLvjgzhMe1gBaNdMygqh743xYH4uZpcZVshxUc/{id}',
                          format: '24x24',
                          source: '600x600',
                          offset: 1 )


## note: #0  return 404 not found!!! - skip officially - why? why not?
# range = (1000..1999)
# c.download_meta( range )


# range = (179..361)
# c.download_images( range )


# range = (1..361)
# c.pixelate( range )
