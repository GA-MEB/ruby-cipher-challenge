
## Pass Level 1 Tests
def encode(string, rot=13)
  string.downcase!
  # Your Code Goes Here
  keys = 'abcdefghijklmnopqrstuvwxyz'.chars
  values = 'abcdefghijklmnopqrstuvwxyz'.chars.rotate(rot)
  pairs = keys.zip(values)
  hsh = Hash[pairs]

  string.chars.map{ |c| hsh[c] }.join
end

def decode(string, rot=13)
  string.downcase!
  # Your Code Goes Here
  keys = 'abcdefghijklmnopqrstuvwxyz'.chars
  values = 'abcdefghijklmnopqrstuvwxyz'.chars.rotate(-1 * rot)
  pairs = keys.zip(values)
  hsh = Hash[pairs]

  string.chars.map{ |c| hsh[c] }.join
end

## Pass Level 2 Tests
# def encode(string, rot=13)
#   string.downcase!
#   # Your Code Goes Here
#   keys = 'abcdefghijklmnopqrstuvwxyz'.chars
#   values = 'abcdefghijklmnopqrstuvwxyz'.chars.rotate(rot)
#   pairs = keys.zip(values)
#   hsh = Hash[pairs]
#
#   string.split.map do |word|
#     word.chars.map{ |c| hsh[c] }.join
#   end.join(' ')
# end
#
# def decode(string, rot=13)
#   string.downcase!
#   # Your Code Goes Here
#   keys = 'abcdefghijklmnopqrstuvwxyz'.chars
#   values = 'abcdefghijklmnopqrstuvwxyz'.chars.rotate(-1 * rot)
#   pairs = keys.zip(values)
#   hsh = Hash[pairs]
#
#   string.split.map do |word|
#     word.chars.map{ |c| hsh[c] }.join
#   end.join(' ')
# end
