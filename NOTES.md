# Notes


## Todos / Fix

- [ ] for token meta download auto-create dirs

```
No such file or directory @ rb_sysopen - ./binaryapes/token-meta/1.json (Errno::ENOENT)
```



## More Collections

- <https://opensea.io/collection/0xmoonbirds> - Moonbirds Expansion ?? Pack

5555 items max. (5523 ??)

tokenuri metadata not working (April/19)

- https://0xmoonbirds.com/
- https://etherscan.io/address/0xcffc3d66aee22fd5fe99011f64435038f29f9644 created on Apr-18-2022 03:55:19 AM

---------

1500 items max.   Moonbirds Expansion ??

- https://0xmoonbirds.xyz/
- https://etherscan.io/address/0x1a9027df2cf0baf37668847f8e35c791384871ab created on Apr-17-2022 01:40:57 AM

---

1500 items max.   Moonbirds Expansion ??

- https://moonbirds0x.xyz/
- https://twitter.com/0xmoonbirds_xyz



------
updates

Our original contract featured the first 9937 birds. As to avoid having lonely Moonbirds without a flipped twin, we have included all 10,000 birds in new our V2 contract.

V1 Phoonbird holders have been airdropped their new V2 Phoonbird (check your wallets). New OS https://opensea.collection/phoonbirdsv2



more phoonbirds / moonbhirds / ...

- Moon Bhirds
 - https://www.moonbhirds.com/
 - https://twitter.com/MoonBhirds
 - https://opensea.io/collection/moonbhirds


- Flippy Birds
  - https://flippybirds.com/
  - https://etherscan.io/address/0x062082ef0eea23a84e383a5cd978504818318386 created on Apr-16-2022 08:46:28 PM
  - https://twitter.com/FlippyBirdsNFT



- Flipped Moonbirds (I)
  - https://twitter.com/FlippedBirds

- Flipped Moonbirds (II)
  - https://twitter.com/MoonBirdsFlip
  - https://opensea.io/collection/flippedmoonbirbs


others

- Zombie Moonbirds
  - https://twitter.com/ZombieMoonBirds

- Starbirds
  - https://starbirds.io/
  - https://twitter.com/Starbirdsnft

- Mutant Birds
  - https://www.mutantbirds.io
  - https://opensea.io/collection/mutant-birds
  - https://twitter.com/mutant_birds

- Sun Birds
  - https://twitter.com/SunBirds_NFT

- Fastfood Birds
  - https://twitter.com/fastfoodbirds

- Moonbirds Mutant
  - https://moonbirdsmutant.xyz/
  - https://twitter.com/MoonbirdsMutant


- Mutant Moonb1rds
 - https://opensea.io/collection/mutantmoonb1rds
 - https://twitter.com/MutantMoonb1rds

- Mfers Moonbirds
  - https://twitter.com/mfers_moonbirds
  - https://moonbirdsmfers.xyz/
  - https://opensea.io/collection/moonbirdsmfers

- Moon Birdies (Baby Moonbirds)
  - https://twitter.com/MoonBirdies_nft
  - https://opensea.io/collection/moonbirdies

- Moonbird Batz
  - https://twitter.com/Moonbirdsbatz
  - https://opensea.io/collection/moonbirdsbatz

- Noun Birds
  - https://twitter.com/NounBirdsNFT
  - https://opensea.io/collection/nounbirds




---------------
- <https://opensea.io/collection/unemployables>
  - https://etherscan.io/address/0xe0be388ab81c47b0f098d2030a1c9ef190691a8a

5000 items, 24x24 px - uses ethereum Unemployables contract


- <https://opensea.io/collection/famouspolygonians>
  - https://twitter.com/PolygoniansNFT




- <https://opensea.io/collection/punkettes>

150 Items, 24x24 px?  - use OpenSea Shared Store Conctract


- World of Crypto Punk Women  - 5555 max.
  - https://twitter.com/CPW1121
  - https://www.wocpw.io


- https://twitter.com/football_punks

- https://linktr.ee/_MYPUNKS_
  - https://twitter.com/MYPUNKofficial

- https://unlistedpunks.com/
  - https://twitter.com/UnlistedPunks




## Stats

Moonbirds
- https://www.nft-stats.com/collection/proof-moonbirds

top sales:
- #7963 sold for $412.7k - 2 days ago

BACKGROUND - Jade Green
BODY - Jade
FEATHERS - Legendary Emperor





## Ideas

Change .json token metadata format to a text format?

Example:

```
name:         "#0"
image:        https://live---metadata-5covpqijaa-uc.a.run.app/images/0
external_url: https://moonbirds.xyz/

attributes:
  Eyes:         Angry
  Outerwear:    Hoodie Down
  Body:         Tabby
  Feathers:     Gray
  Background:   Green
  Beak:         Small
```


```
{
  "name": "#0",
  "image": "https://live---metadata-5covpqijaa-uc.a.run.app/images/0",
  "external_url": "https://moonbirds.xyz/",
  "attributes": [
    {
      "trait_type": "Eyes",
      "value": "Angry"
    },
    {
      "trait_type": "Outerwear",
      "value": "Hoodie Down"
    },
    {
      "trait_type": "Body",
      "value": "Tabby"
    },
    {
      "trait_type": "Feathers",
      "value": "Gray"
    },
    {
      "trait_type": "Background",
      "value": "Green"
    },
    {
      "trait_type": "Beak",
      "value": "Small"
    }
  ],
  "x_debug": [
    "orig:9650"
  ]
}
```