# require modules here



require "yaml"
require 'pry'

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = {}
  emoticon_hash["get_emoticon"] = {}
  emoticon_hash["get_meaning"] = {}
  for emoticon in emoticons.keys
    emoticon_hash[emoticon] = {:english => emoticons[emoticon][0], :japanese => emoticons[emoticon][1]}
  end
  emoticon_hash
end  



def get_japanese_emoticon(path, emoticon)
  emoticon_hash = load_library(path)
  result = emoticon_hash["get_emoticon"]
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

binding.pry