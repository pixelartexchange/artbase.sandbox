##
# see   https://opensea.io/collection/monkerunners-official


COLLECTION = TokenCollection.new( 'monkerunners', 6666,
                     token_base: 'ipfs://QmeBAUAiXjEBLW2Pjm6B5grpCfUftoZndS5FjN7s5ZekV4/{id}.json',
                     image_base: 'ipfs://QmbTuEyZdS7cyG1Si967eWpiS2QaMgofzAsCBgizHFdQGE/{id}.png',
                     format: '50x50',  # 12px * 50 = 600
                     source: '600x600',
)
