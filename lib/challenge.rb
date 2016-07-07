
## Pass Level 1 Tests
def encode(string, rot=13)
  string.downcase!
  # Your Code Goes Here
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  keys = alphabet.chars
  values = alphabet.chars.rotate(13)
  pairs = keys.zip(values)
  cipher = Hash[pairs]

  string.chars.map{ |c| cipher[c] }.join
end

def decode(string, rot=13)
  string.downcase!
  # Your Code Goes Here
  alphabet = 'abcdefghijklmnopqrstuvwxyz'
  keys = alphabet.chars
  values = alphabet.chars.rotate(-13) # or rotate(13)
  pairs = keys.zip(values)
  cipher = Hash[pairs]

  string.chars.map{ |c| cipher[c] }.join
end

## Pass Level 2 Tests
# def encode(string, rot=13)
#   string.downcase!
#   # Your Code Goes Here
#   alphabet = 'abcdefghijklmnopqrstuvwxyz'
#   keys = alphabet.chars
#   values = alphabet.chars.rotate(rot) # or rotate(13)
#   pairs = keys.zip(values)
#   cipher = Hash[pairs]

#   string.split.map do |word|
#     word.chars.map{ |c| cipher[c] }.join
#   end.join(' ')
# end

# def decode(string, rot=13)
#   string.downcase!
#   # Your Code Goes Here
#   alphabet = 'abcdefghijklmnopqrstuvwxyz'
#   keys = alphabet.chars
#   values = alphabet.chars.rotate(rot) # or rotate(13)
#   pairs = keys.zip(values)
#   cipher = Hash[pairs]

#   string.split.map do |word|
#     word.chars.map{ |c| cipher[c] }.join
#   end.join(' ')
# end
