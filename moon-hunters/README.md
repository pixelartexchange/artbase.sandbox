

Reposted from [**On Air Now! Live Art Base Coding Session Part III - Let's Download the 2222 Moonhunter Cheetah Token Meta Data, Images, & More - Follow Along - Questions & Comments Welcome**](https://old.reddit.com/r/DIYPunkArt/comments/vl0rq2/on_air_now_live_art_base_coding_session_part_iii/):

  for more live coding fun today - let's add some more moonrunner collections to download.    Any good "derivates" out there?  Yes, you can - tell us and post a comment.

  Let's continue  with 2222 Moonhunter Cheetahs.  Learn more at the official links:

- https://opensea.io/collection/moon-hunters
- https://twitter.com/moonhunter_xyz

What's your take on Moonhunter Cheetahs? Yes, you can. Tell us and post a comment.

**Update**   It looks like Moonhunter Cheetahs is a "rebranded" token sale of the original Cheetah Coalition collection (on Solana).  See the O.G. official links and compare:

- https://magiceden.io/marketplace/cheetah_coalition
- https://twitter.com/CheetahSOL

----

Note:   For full follow along step-by-step documentation see  [**On Air Now! Live Art Base Coding Session - Let's Download the 10 000 Moonrunner Token Meta Data, Images, & More - Don't Get Left Out Of The Pack - Follow Along**](https://old.reddit.com/r/DIYPunkArt/comments/vkz1fx/on_air_now_live_art_base_coding_session_lets/). Here  I post updates throughout the day - but a little less in detail.   I try to upload all scripts, token metadata, images and more  over at the  pixel art exchange.  In the artbase.sandbox see [**/moon-hunters »**](https://github.com/pixelartexchange/artbase.sandbox/tree/master/moon-hunters)
 

Okkie - let's start - the Moonhunters token contract:

- https://etherscan.io/address/0xc3be2b71800a9ea49ddaf76b4d45c3b027ead6cf

And let's try query for the tokenURI for token #1 resulting in:

- http://ipfs.io/ipfs/QmenkDXjhoYdLLEZz9QujRETNhpC1PXExPRmhi22jL7S9i/1.json

And the meta data record for token #1 reads:

     {"name":"Moonhunter #1",
       "image":"http://ipfs.io/ipfs/QmUu...Fh/1.png",
       "description":"2222 cheetahs...",
        "attributes":[
          {"trait_type":"Neck", "value":"diamondchain"},
          {"trait_type":"Hats", "value":"shinobi"},
          {"trait_type":"Background", "value":"blue"},
          {"trait_type":"Eyes", "value":"blueeyes"},
          {"trait_type":"Base", "value":"burgundy"},
          {"trait_type":"Mouths", "value":"bone"},
          {"trait_type":"Earrings", "value":"ironstud"},
          {"trait_type":"Face", "value":"none"}]}

And let's try some more:

- http://ipfs.io/ipfs/QmenkDXjhoYdLLEZz9QujRETNhpC1PXExPRmhi22jL7S9i/2.json
- http://ipfs.io/ipfs/QmenkDXjhoYdLLEZz9QujRETNhpC1PXExPRmhi22jL7S9i/3.json
- http://ipfs.io/ipfs/QmenkDXjhoYdLLEZz9QujRETNhpC1PXExPRmhi22jL7S9i/4.json
- ...

Let's try the image link (again via an ipfs web gateway) for token #1:

- http://ipfs.io/ipfs/QmUuCLqJnuFFStWN1JFxLUH4jkiRhFY41eZdxmAv4PaiFh/1.png 

And let's try some more:

- http://ipfs.io/ipfs/QmUuCLqJnuFFStWN1JFxLUH4jkiRhFY41eZdxmAv4PaiFh/2.png
- http://ipfs.io/ipfs/QmUuCLqJnuFFStWN1JFxLUH4jkiRhFY41eZdxmAv4PaiFh/3.png
- http://ipfs.io/ipfs/QmUuCLqJnuFFStWN1JFxLUH4jkiRhFY41eZdxmAv4PaiFh/4.png
- ...

Next let's have a looksie at the pixel art and let's bring in / on the art critiques...

Art Question #1: What's the dimension (width x height) in pixels of the image?

A: 512x512

Art Question #2: What's the zoom factor (5x? 10x?) used in the "for-sale display" image and what's the true pixel art dimension (width x height)?

A: The zoom factor is 8x and the true pixel art dimension is 64x64 (8x64 = 512).

Now let's hand it over to the artbase machinery. Let's add the collection configuration in /moon-hunters/collection.rb reading:

     COLLECTION = TokenCollection.new( 'moon-hunters', 2222,
       token_base: 'ipfs://QmenkDXjhoYdLLEZz9QujRETNhpC1PXExPRmhi22jL7S9i/{id}.json',
       image_base: 'ipfs://QmUuCLqJnuFFStWN1JFxLUH4jkiRhFY41eZdxmAv4PaiFh/{id}.png',
       format: '64x64',    # 8px * 64 = 512
       source: '512x512',
       offset: 1
     )


And now you can:

1) Download all metadata one-by-one using:

      $ artbase moon-hunters m

2) Download all images one-by-one using:

      $ artbase moon-hunters i

3) Downsample (from 512x512 to 64x64) / pixelate all images one-by-one using:

      $ artbase moon-hunters px

4) Generate an all-in-one composite:

      $ artbase moon-hunters composite

And more.







## Questions? Comments?

Yes, you can. Post them on the [D.I.Y. Punk (Pixel) Art reddit](https://old.reddit.com/r/DIYPunkArt). Thanks.





