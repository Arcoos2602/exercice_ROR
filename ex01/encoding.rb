def encoding(plain_message)
    if  /[^a-z]/.match(plain_message) != nil
        return "message only accepts a to z characters"
    end
    plain_message
    .chars
    .chunk{|i| i}
    .map {|kind, array| [array.length, kind]}
    .join()
end

puts encoding("“aaaabcccaaa")
puts encoding("azertyuiop")
puts encoding("aaaabccdzqdfqzklggklsgesgesgesgeeccaaa")
puts encoding("13")
