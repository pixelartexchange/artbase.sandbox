##
# see   https://opensea.io/collection/moon-hunters


## note: check if token #0 is valid or a dummy ??
##            start with token #1 for now

COLLECTION = TokenCollection.new( 'moon-hunters', 2222,
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
##   no. 2, 18, 20, 21, 22, 70,  ...
##
