#####
# to run use:
#   $ ruby proof-moonbirds/unshuffled_convert.rb
#
#
#   convert unshuffled.json
#    to "flat-file" tabular comma-separated values (csv) file
#
#  download the all-in-one unshuffled.json dataset (~10MB)
#    here https://github.com/PROOF-Holdings/moonbirds-shuffle


require 'json'


def read_json( path )
  txt = File.open( path, 'r:utf-8') {|f| f.read }
  data = JSON.parse( txt )
  data
end




def convert_traits( data )
  required_keys = [
    'ID',
    'Background',
    'Body',
    'Feathers',
    ]
  optional_keys = [
    'Eyes',           ## note: if eyewear present (eyes/eye color is optional)
    'Eye Color',
    'Eyewear',
    'Beak',           ## note: e.g. Jade / Jade Green / Legendary has no beak
    'Beak Color',
    'Headwear',
    'Outerwear',
  ]

  keys = required_keys + optional_keys


  traits = {}

  data.each do |t|
    trait_type  = t['trait_type'].strip
    trait_value = t['value'].strip

    unless keys.include?( trait_type )
      puts "!! ERROR - unknown trait_type #{trait_type} in:"
      pp data
      exit 1
    end

    if traits.has_key?( trait_type )  # check for duplicates
      puts "!! ERROR - duplicate trait_type #{trait_type} in:"
      pp data
      exit 1
    end
    traits[trait_type] = trait_value
  end


  required_keys.each do |key|
    unless traits.has_key?( key )
      puts "!! ERROR - required trait_type #{key} missing in :"
      pp data
      exit 1
    end
  end

  traits
end


data = read_json( './proof-moonbirds/unshuffled.json' )
puts " #{data.size} record(s)"



recs = []

data.each_with_index do |h,i|
  traits = convert_traits( h['attributes'] )

  recs << [
    traits['ID'],
    traits['Background'],
    traits['Body'],
    traits['Feathers'],
    traits['Beak'],
    traits['Beak Color'],
    traits['Eyes'],
    traits['Eye Color'],
    traits['Eyewear'],
    traits['Headwear'],
    traits['Outerwear'],
  ]
end


pp recs[0..9]



puts
headers = [ 'id',
            'background',
            'body',
            'feathers',
            'beak',
            'beak color',
            'eyes',
            'eye color',
            'eyewear',
            'headwear',
            'outerwear',
]


### save to unshuffled.csv

File.open( './tmp/unshuffled.csv', 'w:utf-8') do |f|
   f.write( headers.join( ', ' ))
   f.write( "\n" )
   recs.each do |rec|
     f.write( rec.join( ', ' ))
     f.write( "\n" )
  end
end

puts "bye"