#############################
#   build artbase.db (a.k.a. pudgypunkbase)
#
#
# tip: how to run a local webserver with ruby
#     $ ruby -run -e httpd . -p 8080



# 5 attribute(s):
#  Skin  8888  (13 uniques)
#  Face  8888  (24 uniques)
#  Head  8888  (49 uniques)
#  Body  8888  (57 uniques)
#  background  8888  (8 uniques)


def metadata_columns   ## rename to metadata_schema or such - why? why not?
  [
    ['skin',       { null: false }],
    ['face',       { null: false }],
    ['head',       { null: false }],
    ['body',       { null: false }],
    ['background', { null: false }],
  ]
end


