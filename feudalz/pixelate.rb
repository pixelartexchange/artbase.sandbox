#####
# to run use:
#   $ ruby feudalz/pixelate.rb


require_relative '../artbase'



steps  = Image.calc_sample_steps( 336, 24 )


range = (0..99)
range.each do |id|

  puts "==> #{id}  - reading / decoding #{id} ..."
  start = Time.now

  img = Image.read( "./feudalz/token-i/#{id}.png" )

  stop = Time.now
  diff = stop - start

  puts "  in #{diff} sec(s)\n"

  if img.width == 336 && img.height == 336
    pix = img.pixelate( steps )

    ## todo/check: keep usingu slug e.g. 0001.png or "plain" 1.png - why? why not?
    ## slug = "%04d" % id
    pix.save( "./feudalz/24x24/#{id}.png")
  else
    puts "!! ERROR - unknown/unsupported dimension - #{img.width}x#{img.height}; sorry"
    exit 1
  end
end

puts "bye"