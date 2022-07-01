##
# see   https://opensea.io/collection/moon-hunters


## note: check if token #0 is valid or a dummy ??
##            start with token #1 for now

COLLECTION = TokenCollection.new( 'moonhunters', 2200,
                     token_base: 'ipfs://QmenkDXjhoYdLLEZz9QujRETNhpC1PXExPRmhi22jL7S9i/{id}.json',
                     image_base: 'ipfs://QmUuCLqJnuFFStWN1JFxLUH4jkiRhFY41eZdxmAv4PaiFh/{id}.png',
                     format: '64x64',    # 8px * 64 = 512
                     source: '512x512',
                     offset: 1
)


### errata:
##    note: some images get downloaded as *.png
##               and content/type  => image/png BUT
##    are actually gifs
##
##   no. 2, 18, 20, 21, 22, 70
##
##
##
##   note: advertised as 2222 items but only 2200 availabe?  (22 missing e.g. 2201..2222?!)
##    e.g. GET /ipfs/QmUuCLqJnuFFStWN1JFxLUH4jkiRhFY41eZdxmAv4PaiFh/2201.png uri=https://ipfs.io/ipfs/QmUuCLqJnuFFStWN1JFxLUH4jkiRhFY41eZdxmAv4PaiFh/2201.png
##    results in
##   !! error:  404 Not Found


