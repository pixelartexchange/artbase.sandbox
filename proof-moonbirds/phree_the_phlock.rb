#####
# to run use:
#   $ ruby proof-moonbirds/phree_the_phlock.rb


require 'pixelart'


##
#  try top selling golden moonbirds 42x42 in phree the phlock variants
#    see  https://www.nft-stats.com/collection/proof-moonbirds


birds = [5602,7789,8249,
         6610,7205,2018,
         761,7473,3047].map { |id| Image.read( "./proof-moonbirds/42x42/#{id}.png" ) }


def make_phlock( birds, background: 0, mirror: false )
  ###
  #  generate a moonbirds composite in 3x3 grid (cols x rows)
  composite = ImageComposite.new( 3, 3, background: background,
                                        width: 42,
                                        height: 42 )

  birds.each do |bird|
    bird = bird.transparent    if background != 0   # note: (default) background color 0 is transparent
    bird = bird.mirror         if mirror
    composite << bird
  end

  composite
end


### make a 2x2 composite with 4 lots
phree_the_phlock = ImageComposite.new( 2, 2, width: 42*3, height: 42*3 )

phree_the_phlock << make_phlock( birds )  # classic
phree_the_phlock << make_phlock( birds, background: '#a79aff', mirror: true )  # V1 - lavender?
phree_the_phlock << make_phlock( birds, background: '#638596', mirror: true )  # V2 - larva gray?
phree_the_phlock << make_phlock( birds, background: '#60a4f7', mirror: true )  # V3 - baby blue?


phree_the_phlock.save( "./tmp/phree_the_phlock.png" )
phree_the_phlock.zoom(4).save( "./tmp/phree_the_phlock@4x.png" )


puts "bye"