def get_name_hash
  nameHash = {
  	"A" => 1,
  	"B" => 2,
  	"C" => 3,
  	"D" => 4,
  	"E" => 5,
  	"F" => 8,
  	"G" => 3,
  	"H" => 5,
  	"I" => 1,
  	"J" => 1,
  	"K" => 2,
  	"L" => 3,
  	"M" => 4,
  	"N" => 5,
  	"O" => 7,
  	"P" => 8,
  	"Q" => 1,
  	"R" => 2,
  	"S" => 3,
  	"T" => 4,
  	"U" => 6,
  	"V" => 6,
  	"W" => 6,
  	"X" => 5,
  	"Y" => 1,
  	"Z" => 7
  }
end

def namecount username
  val = 0
  username = username.chomp.upcase.gsub(/\s+/, "")
  nameHash = get_name_hash

  username.each_char { |chr| 
    val = val + nameHash[chr]
   }
  puts "Name count is #{val}"
  return val  
end

# puts "Enter Username"
# username = gets.chomp.upcase.gsub(/\s+/, "")
