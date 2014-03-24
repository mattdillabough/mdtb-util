area_to_zipcode = {
  'San Francisco' => '94103',
  'Atherton' => '94027',
  'Los Angeles' => ['90212', '90210'],
  'Rhode Island' => {
    'Providence' => '02769',
    'Lincoln' => '02865',
  },
}

mapping = [['Travis', 'San Francisco'], ['Matt', 'Atherton']]
mapping_hash = Hash[mapping]
puts mapping_hash['Travis']

puts area_to_zipcode['San Francisco']
print 'Input an area: '
city = gets.chomp!
puts "You chose #{city}"
zips = area_to_zipcode[city]
if zips.kind_of?(String)
  puts "The zipcode is #{zips}"
elsif zips.kind_of?(Array)
  puts "There are #{zips.size} zipcodes:\n#{zips.join(' ')}"
elsif zips.kind_of?(Hash)
  puts "Choose a sub-area by number (1-#{zips.size})"
  i = 1
  zips.each do |key, value|
    puts "#{i}) #{key}"
    i += 1
  end
  choice = gets.chomp!
  city = zips.keys[choice.to_i - 1]
  puts "You chose #{city}"
  puts "The zipcode is #{zips[city]}"
end

