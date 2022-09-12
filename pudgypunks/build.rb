#############################
#   build artbase.db (a.k.a. pudgypunkbase)
#
#
# tip: how to run a local webserver with ruby
#     $ ruby -run -e httpd . -p 8080




## todo/check: add default metadata method - why? why not?
##    slugifies all keys (see below) - why? why not?
def to_metadata( attributes )
  h = {}
  attributes.each do |key,value|
    slug = slugify( key )
    h[ slug ] = value
  end
  h
end


def metadata_columns   ## rename to metadata_schema or such - why? why not?
  [
    ['skin',       { null: false }],
    ['face',       { null: false }],
    ['head',       { null: false }],
    ['body',       { null: false }],
    ['background', { null: false }],
  ]
end


