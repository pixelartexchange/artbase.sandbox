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


------
more phoonbirds

- Flipped Moonbirds
  - https://twitter.com/FlippedBirds


others

- Zombie Moonbirds
  - https://twitter.com/ZombieMoonBirds

- Starbirds
  - https://starbirds.io/
  - https://twitter.com/Starbirdsnft

---------------
- <https://opensea.io/collection/unemployables>
  - https://etherscan.io/address/0xe0be388ab81c47b0f098d2030a1c9ef190691a8a

5000 items, 24x24 px - uses ethereum Unemployables contract





- <https://opensea.io/collection/punkettes>

150 Items, 24x24 px?  - use OpenSea Shared Store Conctract



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