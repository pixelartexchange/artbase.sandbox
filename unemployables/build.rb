# 13 attribute(s):
#   Skin Tone  5000  (12 uniques)
#   Hair Style  4944  (19 uniques)
#   Hair Color  4744  (9 uniques)
#   Facial Hair  160  (6 uniques)
#   Hats  2143  (17 uniques)
#   Hat Color  2143  (15 uniques)
#   Glasses  83  (1 uniques)
#   Clothing  5000  (10 uniques)
#   Clothing Color  5000  (15 uniques)
#   Dogs  459  (9 uniques)
#   Cats  222  (8 uniques)
#   Birds  85  (3 uniques)
#   Animal Hoodie  367  (18 uniques)


def metadata_columns   ## rename to metadata_schema or such - why? why not?
  [
   ['skin_tone',   { null: false }],
   ['hair_style' ],
   ['hair_color' ],
   ['facial_hair' ],
   ['hats'  ],
   ['hat_color'  ],
   ['glasses' ],
   ['clothing',    { null: false }],
   ['clothing_color',  { null: false }],
   ['dogs' ],
   ['cats' ],
   ['birds' ],
   ['animal_hoodie' ],
  ]
end

