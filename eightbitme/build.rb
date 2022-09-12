#############################
#   build artbase.db (a.k.a. 8bitbase)
#
#
# tip: how to run a local webserver with ruby
#     $ ruby -run -e httpd . -p 8080



def to_metadata( attributes )
  h = {}
  attributes.each do |key,value|
    next if ['Shoes', 'Shoes Color',
             'Pants', 'Pants Color',
             'Perk'].include?( key )

    slug = slugify( key )
    slug = 'gender'   if slug == 'body'
    slug = 'beard'    if slug == 'facial_hair'

    h[ slug ] = value
  end
  h
end


def metadata_columns
  [
    ['gender',     { null: false }],
    ['skin_tone',  { null: false }],
    ###############
    #  -- (optional) attributes
    ['hair'], ['hair_color'],
    ['beard'],
    ['glasses'],     ['glasses_color'],
    ['hat'],         ['hat_color'],
    ['jacket'],      ['jacket_color'],
    ['shirt'],       ['shirt_color'],
    ['dress'],       ['dress_color'],
    ['outfit'],
    ['background'],  ['background_color'],
 ]
end
