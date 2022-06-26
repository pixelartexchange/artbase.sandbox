
Reposted from [**On Air Now! Live Art Base Coding Session Part II - Let's Download the 3333 Baby Moonrunner Token Meta Data, Images, & More - Don't Get Left Out Of The Future of the Pack - Follow Along**](https://old.reddit.com/r/DIYPunkArt/comments/vl0a0d/on_air_now_live_art_base_coding_session_part_ii/):

For more live coding fun today - let's add some more moonrunner collections to download.    Any good "derivates" out there?  Yes, you can - tell us and post a comment.

  Let's start with 3333 Baby Moonrunners. Advertised as "They Are The Future of the Pack".  Learn more at the official links:

- https://opensea.io/collection/babymoonrunners

What's your take on Baby Moonrunners? Yes, you can. Tell us and post a comment.

----

Note:  For full follow along step-by-step documentation see  [**On Air Now! Live Art Base Coding Session - Let's Download the 10 000 Moonrunner Token Meta Data, Images, & More - Don't Get Left Out Of The Pack - Follow Along**](https://old.reddit.com/r/DIYPunkArt/comments/vkz1fx/on_air_now_live_art_base_coding_session_lets/). Here  I post updates throughout the day - but a little less in detail.    I try to upload all scripts, token metadata, images and more  over at the  pixel art exchange.  In the artbase.sandbox see [**/babymoonrunners »**](https://github.com/pixelartexchange/artbase.sandbox/tree/master/babymoonrunners)
 

Okkie - let's start - the BabyMoonrunners token contract:

- https://etherscan.io/address/0xea2aebf41ce1d5b6cea2f75ac9214ddac7d06d1c

And let's try query for the tokenURI for token #0 resulting in:

-  ipfs://QmbnSzLxLcpue9JUjBFAgEKXX8RsodhJGSfFCnarBfMovi/1   convert to web link (using a ipfs web gatway) => https://ipfs.io/ipfs/QmbnSzLxLcpue9JUjBFAgEKXX8RsodhJGSfFCnarBfMovi/1 

And the meta data record for token #0 reads:

     {
        "dna": "1",
        "name": "Baby Moonrunner #1",
        "description": "3333 Baby Moonrunners...",
        "image": "ipfs://bafy...74/1.png",
        "edition": 1,
        "date": 1656210952406,
        "attributes": [{
            "trait_type": "Trait", "value": "10"
        }],
        "compiler": "NFT"
     }

And let's try some more:

- https://ipfs.io/ipfs/QmbnSzLxLcpue9JUjBFAgEKXX8RsodhJGSfFCnarBfMovi/2
- https://ipfs.io/ipfs/QmbnSzLxLcpue9JUjBFAgEKXX8RsodhJGSfFCnarBfMovi/3
- https://ipfs.io/ipfs/QmbnSzLxLcpue9JUjBFAgEKXX8RsodhJGSfFCnarBfMovi/4
- ...

Let's try the image link (again via an ipfs web gateway) for token #0:

- https://ipfs.io/ipfs/bafybeihqlcfwnmuwrejq4li6mj4zxhhznxwvc2aox4zlg47kx2lozlry74/1.png 

And let's try some more:

- https://ipfs.io/ipfs/bafybeihqlcfwnmuwrejq4li6mj4zxhhznxwvc2aox4zlg47kx2lozlry74/2.png
- https://ipfs.io/ipfs/bafybeihqlcfwnmuwrejq4li6mj4zxhhznxwvc2aox4zlg47kx2lozlry74/3.png
- https://ipfs.io/ipfs/bafybeihqlcfwnmuwrejq4li6mj4zxhhznxwvc2aox4zlg47kx2lozlry74/4.png
- ...

Next let's have a looksie at the pixel art and let's bring in / on the art critiques...

Art Question #1: What's the dimension (width x height) in pixels of the image?

A: 512x512

Art Question #2: What's the zoom factor (5x? 10x?) used in the "for-sale display" image and what's the true pixel art dimension (width x height)?

A: The zoom factor is about 5x+ and the true pixel art dimension is 100x100 (~5x100 = 500+12).

Now let's hand it over to the artbase machinery. Let's add the collection configuration in /babymoonrunners/collection.rb reading:


    COLLECTION = TokenCollection.new( 'babymoonrunners', 3333,
       token_base: 'ipfs://QmbnSzLxLcpue9JUjBFAgEKXX8RsodhJGSfFCnarBfMovi/{id}',
       image_base: 'ipfs://bafybeihqlcfwnmuwrejq4li6mj4zxhhznxwvc2aox4zlg47kx2lozlry74/{id}.png',
       format: '100x100',
       source: '512x512',
       offset: 1
     )


And now you can:

1) Download all metadata one-by-one using:

      $ artbase babymoonrunners m

2) Download all images one-by-one using:

      $ artbase babymoonrunners i

3) Downsample (from 512x512 to 100x100) / pixelate all images one-by-one using:

      $ artbase babymoonrunners px

4) Generate an all-in-one composite:

      $ artbase babymoonrunners composite

And more.


## Questions? Comments?

Yes, you can. Post them on the [D.I.Y. Punk (Pixel) Art reddit](https://old.reddit.com/r/DIYPunkArt). Thanks.

