#############################
#   build artbase.db (a.k.a. goblinbase)
#
#
# tip: how to run a local webserver with ruby
#     $ ruby -run -e httpd . -p 8080


require_relative '../artbase'



slug = 'goblintown'


collection = TokenCollection.read( "./#{slug}/collection.yml" )
pp collection


importer = Artbase::Importer.read( "./#{slug}/build.rb" )

columns = importer.metadata_columns
pp columns

Artbase::Database.connect( "./#{slug}/artbase.db" )
Artbase::Database.auto_migrate!( columns )


collection.import( importer )



puts "bye"

