

COLLECTION = TokenCollection.new( 'moonbears', 4000,
                          token_base: 'https://moonbears.mypinata.cloud/ipfs/QmXMJ8Eysnx9Qwk1Wozv7UbGKvwr7r7sP2oUg5gwEd3z9R/{id}',
                          format: '34x34',  ## note: overflow of 2px (15x34=510)
                          source: '512x512',
                          offset: 1,  ## note: starting at 1 (and NOT at 0)  !!!
                        )

