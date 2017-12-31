hash = {
    "NORTH" => "N",
    "SOUTH" => "S",
    "EAST" => "E",
    "WEST" => "W"
}

pairs = ["NS","SN","EW","WE"]

arr.map! { |e| hash.fetch(c,c) }

while pairs.any? { |pair| string.include? pair}
    pairs.each {|pair| string.slice!(pair)}
end

string