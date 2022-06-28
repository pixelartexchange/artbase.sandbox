##
# see   https://opensea.io/collection/moonquacks


COLLECTION = TokenCollection.new( 'moonquacks', 3500,
                     token_base: 'ipfs://QmS3vn9hNd2sxM4igwbT3qfafXYxeeiArC67ETKx4vQuLS/{id}',
                     image_base: 'ipfs://Qmea6VGe5x7NgsnNEbbUZ3KT49gy2NEEu3UAAMMw6ZFnTs/{id}',
                     format: '42x42',    # 8px * 42 = 336 (+14)
                     source: '350x350',
                     offset: 1,
)

