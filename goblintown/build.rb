


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



def metadata_columns   ## rename to metadata_schema or such - why? why not?
  [
     ['head',         { null: false }],    # nutdbock
     ['body',         { null: false }],    # bood
     ['eye_on_left',  { null: false }],    # eye_on_lfg
     ['eye_on_right', { null: false }],    # eye_on_ryg
     ['ears',         { null: false }],    # eirz
     ['mouth',        { null: false }],    # undnzhoole
     ['nose',         { null: false }],    # trahfolln

     ['background',   { null: false }],     # bagygrnd
  ]
end

