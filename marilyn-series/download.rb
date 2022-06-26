#####
# to run use:
#   $ ruby marilyn-series/download.rb


require_relative '../artbase'


c = TokenCollection.new( 'marilyn-series', 14,
                     token_base: 'openstore@opensea',
                    format: '20x20',   ## note: x&y overflow!!
                    source: '512x512',
                    center_y: ->(id) { case id
                                       when 5,8,9 then  2
                                       when 6 then  0
                                       else 6
                                       end },        ## use 5px offset top
                    center_x: ->(id) {  6 },        ## use 6px offset left
                    excludes: [10],   ## note: no. 10 (Marilyn Monroe FS II.25) uses overlay
)


range = (0..13)
# c.download_images( range )

##
#  note: 4.png to 13.png uses 511x512

range = (0..3)
# range = (4..13)
c.pixelate( range, force: true, zoom: 10 )


puts "bye"