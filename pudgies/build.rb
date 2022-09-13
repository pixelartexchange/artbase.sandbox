#############################
#   build artbase.db (a.k.a. pudgies)


# 5 attribute(s):
#   Skin  5000  (15 uniques)
#   Face  4998  (25 uniques)
#   Head  4851  (53 uniques)
#   Body  4984  (62 uniques)
#   Background  5000  (14 uniques)

def metadata_columns   ## rename to metadata_schema or such - why? why not?
  [
    ['skin',       { null: false }],
    ['face'],
    ['head'],
    ['body'],
    ['background', { null: false }],
    ['_1of1',      { null: false, default: false },  'boolean'],
    ## 1/1 - one of one
  ]
end


##
#  note: auto-add new 1/1 boolean column true/false
#
# 5 1/1s in 840x840px:
# - No. 435  -- CryptoPhunk
# - No. 756   -- Supermarket Green
# - No. 1580 -- Grayscale
# - No. 2319  -- Trick or Treat
# - No. 3618  -- Underwater


IDS_1OF1 = [435, 756, 1580, 2319, 3618]

def before_save( rec )
  ## auto-add 1/1 (1 of 1) boolean flag
  rec._1of1 = true  if IDS_1OF1.include?( rec.id )

  ## normalize skin spellings
  rec.skin = 'Navy Blue'   if rec.skin == 'Navy blue'
end

