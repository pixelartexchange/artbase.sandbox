##
# see   https://opensea.io/collection/crypto-pudgy-punks
#       https://etherscan.io/address/0xcd903693a2edda8d4c9f69f9937eaf2b38a2cbf6

COLLECTION = TokenCollection.new( 'pudgypunks', 8888,
                     token_base: 'ipfs://bafybeidyvur5qrkj5po2vpu3posokrma7k6jkdvmgy5a2upou7qd35az2q/{id}',
                     format: '24x24',
                     source: '1000x1000',
)