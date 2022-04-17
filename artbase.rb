$LOAD_PATH.unshift( "../pixelart/pixelart/lib" )
$LOAD_PATH.unshift( "../artbase/artbase/lib" )


require 'artbase'



###########
# start up tool if run via script (e.g. ruby artbase.rb)

Artbase::Tool.main   if __FILE__ == $0
