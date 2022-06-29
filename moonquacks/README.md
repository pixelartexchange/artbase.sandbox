Reposted from [**On Air Now! Live Art Base Coding Session - Let's Download the 3500 Moonquacks Token Meta Data, Images (Incl. 8 1/1s), & More - Follow Along - If It Looks Like A Duck, Swims Like A Duck, And Quacks Like A Duck...**](https://old.reddit.com/r/DIYPunkArt/comments/vnaw7f/on_air_now_live_art_base_coding_session_lets/):

  let's continue the tradition started Sunday June 26th - and for more live coding fun today - let's try another moon-themed collection to download - or is it "right-click & save" -  using the [**artbase machinery »**](https://github.com/pixelartexchange/artbase)

  Any good pixel art collections out there?     Yes, you can - tell us and post a comment.

  Let's start with 3500 Moonquacks (SOLD OUT!). Advertised as "by a team of non-billionaires [...] we're looking to democratize generational wealth for everyone" or such crypto bro nonsense.  Learn more at the official links:

- https://moonquacks.xyz
- https://opensea.io/collection/moonquacks
- https://twitter.com/moonquacksnft

What's your take on the Moonquacks? Are Quacking Ducks the new Boring Monke's? 


----

Note:  For full follow along step-by-step documentation see  [**On Air Now! Live Art Base Coding Session - Let's Download the 10 000 Moonrunner Token Meta Data, Images, & More - Don't Get Left Out Of The Pack - Follow Along**](https://old.reddit.com/r/DIYPunkArt/comments/vkz1fx/on_air_now_live_art_base_coding_session_lets/). Here  I post updates throughout the day - but a little less in detail.    I try to upload all scripts, token metadata, images and more  over at the  pixel art exchange.  In the artbase.sandbox see [**/moonquaks »**](https://github.com/pixelartexchange/artbase.sandbox/tree/master/moonquacks)
 

Okkie - let's start - the Moonquacks token contract:

- https://etherscan.io/address/0x0eed0a2b4df338fc1bca6115e4100592632d14cd

And let's try query for the tokenURI for token #1 resulting in:

-  ipfs://QmS3vn9hNd2sxM4igwbT3qfafXYxeeiArC67ETKx4vQuLS/1   convert to web link (using a ipfs web gatway) => https://ipfs.io/ipfs/QmS3vn9hNd2sxM4igwbT3qfafXYxeeiArC67ETKx4vQuLS/1 

And the meta data record for token #1 reads:

``` json
{"name":"MoonQuacks #1",
 "description":"MoonQuacks is a collection of 3,500...",
 "image":"ipfs://Qmea6VGe5x7NgsnNEbbUZ3KT49gy2NEEu3UAAMMw6ZFnTs/1",
 "attributes":[
     {"trait_type":"Background", "value":"Green"},
     {"trait_type":"Body", "value":"Brown"},
     {"trait_type":"Outerwear", "value":"None"},
     {"trait_type":"Headgear", "value":"None"},
     {"trait_type":"Bill"," value":"Yellow"},
     {"trait_type":"Eyes"," value":"Rainbow"},
     {"trait_type":"Eyewear", "value":"Monocle"}]}
```

And let's try some more:

- https://ipfs.io/ipfs/QmS3vn9hNd2sxM4igwbT3qfafXYxeeiArC67ETKx4vQuLS/2
- https://ipfs.io/ipfs/QmS3vn9hNd2sxM4igwbT3qfafXYxeeiArC67ETKx4vQuLS/3
- https://ipfs.io/ipfs/QmS3vn9hNd2sxM4igwbT3qfafXYxeeiArC67ETKx4vQuLS/4
- ...

Let's try the image link (again via an ipfs web gateway) for token #1:

- http://ipfs.io/ipfs/Qmea6VGe5x7NgsnNEbbUZ3KT49gy2NEEu3UAAMMw6ZFnTs/1 

And let's try some more:

- http://ipfs.io/ipfs/Qmea6VGe5x7NgsnNEbbUZ3KT49gy2NEEu3UAAMMw6ZFnTs/2
- http://ipfs.io/ipfs/Qmea6VGe5x7NgsnNEbbUZ3KT49gy2NEEu3UAAMMw6ZFnTs/3
- http://ipfs.io/ipfs/Qmea6VGe5x7NgsnNEbbUZ3KT49gy2NEEu3UAAMMw6ZFnTs/4
- ...

Next let's have a looksie at the pixel art and let's bring in / on the art critiques...

Art Question #1: What's the dimension (width x height) in pixels of the image?

A: 350x350

Art Question #2: What's the zoom factor (5x? 10x?) used in the "for-sale display" image and what's the true pixel art dimension (width x height)?

A: The zoom factor is 8x+ and the true pixel art dimension is 42x42 (8px x 42  = 336 + 14).

Now let's hand it over to the artbase machinery. Let's add the collection configuration in /moonquaks/collection.rb reading:

``` ruby
COLLECTION = TokenCollection.new( 'moonquacks', 3500,
       token_base: 'ipfs://QmS3vn9hNd2sxM4igwbT3qfafXYxeeiArC67ETKx4vQuLS/{id}',
       image_base: 'ipfs://Qmea6VGe5x7NgsnNEbbUZ3KT49gy2NEEu3UAAMMw6ZFnTs/{id}',
       format: '42x42',    # 8px * 42 = 336 (+14)
       source: '350x350',
       offset: 1,
)
```

And now you can:

1) Download all metadata one-by-one using:

      $ artbase moonquacks m

2) Download all images one-by-one using:

      $ artbase moonquacks i

3) Downsample (from 350x350 to 42x42) / pixelate all images one-by-one using:

      $ artbase moonquacks px

4) Generate an all-in-one composite:

      $ artbase moonquacks composite

And more.


