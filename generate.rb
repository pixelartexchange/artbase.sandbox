###############################
# to run use:
#    $ ruby ./generate.rb


require 'pixelart'


cats = ImageComposite.read( "./i/coolcats_tvheads.png", width: 24, height: 24 )

pp cats.count  #=> 225    -- note: includes 4 empties (only 221 total)



BACKGROUND_SPOTS = [
 # blue-ish
 '49355E', '16437A', '096598', '4B8BBB', '9CD9DE', 'C5A7C6',
 # red-ish
 'A5282C', 'D14C37', 'CF6A71', 'DD5E36', 'DDA315', 'F3A925',
 # green-ish
 '4C7031', '95A025', '66BA8C', '316D5F',
 # gray-ish /white-ish
 'C2B6AF', 'BFC0C5', '3BC8B5',
]



## todo/check - upstream pixelart
##   auto-skip empties - why? why not?

221.times do |id|
  cat = cats[id]
  puts "==> cat #{id}..."

  ###
  #  for testing generate "basic"
  #     cat images with spots (no background)
  cat_spots = cat.spots( 10 )
  cat_spots.save( "./tmp/cat-#{id}-spots-v1.png" )

  cat_spots = cat.spots( 5, spacing: 5, center: [-1,1], radius: [3,6] )
  cat_spots.save( "./tmp/cat-#{id}-spots-v2.png" )


  #####
  #  collection no 1
  cat_spots = cat.zoom(2).spots( 5, spacing: 5,
                             center: [-1,1], radius: [3,6],
                             background: BACKGROUND_SPOTS )

  cat_spots.save( "./o/no1/cat-#{id}-currency@2x.png" )


  #####
  #  collection no 2
  cat_spots = cat.zoom(2).spots( 5, spacing: 5,
                             center: [-3,3], radius: [2,8],
                             background: BACKGROUND_SPOTS )

  cat_spots.save( "./o/no2/cat-#{id}-currency@2x.png" )


  cat_spots = cat.zoom(2).spots_hidef( 5, spacing: 5,
                              center: [-3,3], radius: [2,8],
                              background: BACKGROUND_SPOTS )

  cat_spots.save( "./o/no2/cat-#{id}-currency@2x.svg" )
end



puts "bye"
