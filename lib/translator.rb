# require modules here



require "yaml"
require 'pry'

# def load_library(path)
#   emoticons = YAML.load_file(path)
#   emoticon_hash = {}
#   emoticon_hash["get_emoticon"] = {}
#   emoticon_hash["get_meaning"] = {}
#   for emoticon in emoticons.keys
#     emoticon_hash[emoticon] = {:english => emoticons[emoticon][0], :japanese => emoticons[emoticon][1]}
#   end
#   emoticon_hash
# end  

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = Hash.new

  emoticon_hash["get_emoticon"] = Hash.new
  emoticon_hash["get_meaning"] = Hash.new

  emoticons.each do |english_word, emoticon_set|
    emoticon_hash["get_emoticon"][emoticon_set.first] = emoticon_set.last
    emoticon_hash["get_meaning"][emoticon_set.last] = english_word
  end
  emoticon_hash
end





