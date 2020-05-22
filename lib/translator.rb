# require modules here



require "yaml"
require 'pry'
# def load_library
#   # code goes here	  
#   emoticons = YAML.load_file('./lib/emoticons.yml')
#   emoticons
# end

# def get_japanese_emoticon
#   # code goes here
# end

# def get_english_meaning
#   # code goes here
# end

def load_library(path)
  lib = YAML.load_file(path)
  emoticon_hash = {}
  for emoticon in lib.keys
    new_lib[emoticon] = {:english => lib[emoticon][0], :japanese => lib[emoticon][1]}
  end
  new_lib
end  



def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end

def get_english_meaning(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_meaning"][emoticon]
  if result == nil
    result = "Sorry, that emoticon was not found" 
  end
  result
end
