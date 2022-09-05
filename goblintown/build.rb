#############################
#   build artbase.db (a.k.a. goblinbase)
#
#
# tip: how to run a local webserver with ruby
#     $ ruby -run -e httpd . -p 8080


require_relative '../artbase'


require 'active_record'
require 'sqlite3'



def slugify( str )
  str = str.strip.downcase
  str = str.gsub( /[ ]/, '_' )
  str
end


def to_metadata( attributes )
  h = {}
  attributes.each do |key,value|
    slug = slugify( key )

    slug = 'head'          if slug == 'nutdbock'
    slug = 'body'          if slug == 'bood'
    slug = 'eye_on_left'   if slug == 'eye_on_lfg'
    slug = 'eye_on_right'  if slug == 'eye_on_ryg'
    slug = 'ears'          if slug == 'eirz'
    slug = 'mouth'         if slug == 'undnzhoole'
    slug = 'nose'          if slug == 'trahfolln'
    slug = 'background'    if slug == 'bagygrnd'

    h[ slug ] = value
  end
  h
end



module Database
class CreateDb
  def up
    ActiveRecord::Schema.define do

  create_table :metadata do |t|
    t.string  :head,         null: false    # nutdbock
    t.string  :body,         null: false    # bood
    t.string  :eye_on_left,  null: false    # eye_on_lfg
    t.string  :eye_on_right, null: false    # eye_on_ryg
    t.string  :ears,         null: false    # eirz
    t.string  :mouth,        null: false    # undnzhoole
    t.string  :nose,         null: false    # trahfolln

    t.string  :background,   null: false    # bagygrnd

    t.string  :image, null: false

    t.timestamps
  end
  end  # Schema.define
end # method up

end # class CreateDb




def self.connect( database )

      config =   { adapter:  'sqlite3',
                   database: database,
                    }

    puts "Connecting to db using settings: "
    pp config
    ActiveRecord::Base.establish_connection( config )
    # ActiveRecord::Base.logger = Logger.new( STDOUT )

    ## if sqlite3 add (use) some pragmas for speedups
      ## note: if in memory database e.g. ':memory:' no pragma needed!!
      ## try to speed up sqlite
      ##   see http://www.sqlite.org/pragma.html
      con = ActiveRecord::Base.connection
      con.execute( 'PRAGMA synchronous=OFF;' )
      con.execute( 'PRAGMA journal_mode=OFF;' )
      con.execute( 'PRAGMA temp_store=MEMORY;' )

end

def self.auto_migrate!
  # first time? - auto-run db migratation, that is, create db tables
  unless Metadata.table_exists?
    CreateDb.new.up
  end
end


class Metadata < ActiveRecord::Base
  self.table_name = "metadata"
end
end # module Database



collection = 'goblintown'

ids = (0..4443)


Database.connect( "./#{collection}/artbase.db" )
Database.auto_migrate!


# ids = (0..8)

ids.each do |id|
  path = "./#{collection}/token/#{id}.json"
  puts "==> #{id} - reading #{path}..."
  meta = TokenCollection::Meta.read( path )
  pp meta.attributes
  puts
  h = to_metadata( meta.attributes )
  h[ :id ] = id
  pp h

  img = Image.read( "./#{collection}/48x48/#{id}.png" )

  image = "data:image/png;base64, "
  image += Base64.strict_encode64( img.to_blob )

  puts "image:"
  puts image

  rec = Database::Metadata.new( h )
  rec.image = image
  rec.save!
end




# ActiveRecord::Base.connection.execute( 'VACUUM;' )


# Database::Metadata.all.each do |o|
#   puts "o: #{o.inspect}"
# end


puts "bye"


