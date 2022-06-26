##
# see   https://opensea.io/collection/moonrunnersnft


COLLECTION = TokenCollection.new( 'moonrunnersnft', 10000,
                     token_base: 'https://moonrunners.herokuapp.com/api/{id}',
                     image_base: 'https://moonrunners.herokuapp.com/api/{id}/image',
                     format: '50x50',    # e.g. 6px x 50 = 300
                     source: '300x300',
                     offset: 1
)
