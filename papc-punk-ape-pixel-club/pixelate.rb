#####
# to run use:
#   $ ruby papc-punk-ape-pixel-club/pixelate.rb


require_relative '../artbase'



steps  = Image.calc_sample_steps( 600, 24 )


range = (1..99)
range.each do |id|

  puts "==> #{id}  - reading / decoding #{id} ..."
  start = Time.now

  img = Image.read( "./papc-punk-ape-pixel-club/token-i/#{id}.png" )

  stop = Time.now
  diff = stop - start

  puts "  in #{diff} sec(s)\n"

  if img.width == 600 && img.height == 600
    pix = img.pixelate( steps )

    ## todo/check: keep usingu slug e.g. 0001.png or "plain" 1.png - why? why not?
    ## slug = "%04d" % id
    pix.save( "./papc-punk-ape-pixel-club/24x24/#{id}.png")
  else
    puts "!! ERROR - unknown/unsupported dimension - #{img.width}x#{img.height}; sorry"
    exit 1
  end
end

puts "bye"