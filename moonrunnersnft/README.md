Reposted from [**On Air Now! Live Art Base Coding Session - Let's Download the 10 000 Moonrunner Token Meta Data, Images, & More - Don't Get Left Out Of The Pack - Follow Along**](https://old.reddit.com/r/DIYPunkArt/comments/vkz1fx/on_air_now_live_art_base_coding_session_lets/):


 On Air Now! Your questions & comment welcome. Let's try something different today - a live art base coding session - yes, you can - follow along - live right now right here as I post updates throughout the day.

   Let's download the 10 000 moonrunner wolfpack collection - that is - all 10 000 metadata records, all 10 000 images, let's downsample the images to its true 50x50 pixel art dimensions, let's put together a historic world's first all-in-one composite image and much more.

   Let's get started and - yes, you can - follow along. I try to document all steps using the artbase scripts / machinery and upload all scripts, token metadata, images and more  over at the  pixel art exchange.  In the artbase.sandbox see [**/moonrunnersnft »**](https://github.com/pixelartexchange/artbase.sandbox/tree/master/moonrunnersnft)
 
Yes, you can. Say hello or introduce yourself. 

Learn more about Moonrunners at the official links:

- https://moonrunners.io
- https://opensea.io/collection/moonrunnersnft
- https://twitter.com/MoonrunnersNFT

What's your take on Moonrunners?  Yes, you can. Tell us and post a comment.


---

Let's get started.   Step 1:   Find and go to the Moonrunners token collection contract (on etherscan).   See https://etherscan.io/address/0x1485297e942ce64e0870ece60179dfda34b4c625

Now click on the "Contract" register tab and on the "Read Contract" register tab - now you can query the contract  for the tokenURI - that is - the link to the "off-chain" token metadata records.   Let's try the token id #1  - enter the number 1 and hit the "Query" button. Bingo!   The contract returns:

- https://moonrunners.herokuapp.com/api/1

Try out the link in your browser and you will get the metadata in the java script object notation (json) format:

    {"image":"https://moonrunners.herokuapp.com/api/1/image",
     "name":"Moonrunners #1",
     "description":"A collection of 10,000...",
     "attributes":[
        {"trait_type":"Background","value":"Yellow"},
        {"trait_type":"Body","value":"Pack"},
        {"trait_type":"Fur","value":"Trippy"},
        {"trait_type":"Mouth","value":"Hungry"},
        {"trait_type":"Eyes","value":"Evil"},
        {"trait_type":"Headwear","value":"Full Moon Bucket"}
      ],
      "dna":"2a30bd91f09abcb2a092860e55903f342180a6ec"}

Now try out some more token metadata records by changing the id and counting up (to 10 000 max.):

- https://moonrunners.herokuapp.com/api/2
- https://moonrunners.herokuapp.com/api/3
- https://moonrunners.herokuapp.com/api/4
- https://moonrunners.herokuapp.com/api/5
-  ...

and so on. Next - let's find and have a looksie at the ("off-chain") images...

Yes - surprise, surprise - in the token metadata record  you will find the link to the ("off-chain") image. Let's cut'n' paste the image link for the token #1 and again let's try out in your browser:

- https://moonrunners.herokuapp.com/api/1/image

Bingo!  Now try out some more image links by changing the id and counting up (to 10 000 max.):

- https://moonrunners.herokuapp.com/api/2/image
- https://moonrunners.herokuapp.com/api/3/image
- https://moonrunners.herokuapp.com/api/4/image
- https://moonrunners.herokuapp.com/api/5/image
-  ...

Next let's have a looksie at the pixel art and let's bring in / on the art critiques...

Moonrunner Art Question #1:   What's the dimension (width x height) in pixels of the image?

A: 300x300

Moonrunner Art Question #2:   What's the zoom factor (5x? 10x?) used in the "for-sale display" image and what's the true pixel art dimension (width x height)?

A: The zoom factor is 6x and the true pixel art dimension 50x50 (6x50 = 300).

Now let's hand it over to the artbase machinery. Let's add the collection configuration in /moonrunnersnft/collection.rb reading:

     COLLECTION = TokenCollection.new( 'moonrunnersnft', 10000,
            token_base: 'https://moonrunners.herokuapp.com/api/{id}',
            image_base: 'https://moonrunners.herokuapp.com/api/{id}/image',
            format: '50x50',    # e.g. 6px x 50 = 300
            source: '300x300',
            offset: 1
     )

And now you can:

1) Download all metadata one-by-one using:

      $ artbase moonrunnersnft m

2) Download all images one-by-one using:

      $ artbase moonrunnersnft i

3) Downsample (from 300x300 to 50x50) / pixelate all images one-by-one using:

      $ artbase moonrunnersnft px

4) Generate an all-in-one composite:

      $ artbase moonrunnersnft composite

And more.




## Questions? Comments?

Yes, you can. Post them on the [D.I.Y. Punk (Pixel) Art reddit](https://old.reddit.com/r/DIYPunkArt). Thanks.
