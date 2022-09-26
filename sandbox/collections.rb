###
#   check-up on collections; to run use:
#  $ ruby sandbox/collections.rb


$LOAD_PATH.unshift( "../artbase/artbase/lib" )
require 'artbase'



report = LintCollectionsReport.new(
            base_url: 'https://github.com/pixelartexchange/artbase.sandbox/raw/master'
)

buf = report.build
write_text( "./COLLECTIONS.md", buf )


puts
puts "  #{report.warns.size} warning(s):"
pp report.warns

puts
puts "  #{report.collections.size} collection(s):"
puts report.export_collections


puts "bye"
