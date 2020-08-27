# require modules here
require "yaml"
require "pry"

def load_library(file)
# code goes here
library = YAML.load_file(file)
test = library
  test.each do |key, value|
    test[key] = {:english => test.dig(key, 0), :japanese => test.dig(key,1)}
  end
test
end

def get_english_meaning(file, emoticon)
test = load_library(file)
  test.each do |k, v|
   if test[k][:japanese] == emoticon
    return k
   end
  end
end

def get_japanese_emoticon(file, emoticon)
test = load_library(file)
  test.each do |k, v|
   if test[k][:english] == emoticon
    return icon = test[k][:japanese]
   end
  end
  return icon = "Sorry"
end