require "yaml"

def load_library(path)
  emoticons = YAML.load_file(path)
  emoticon_hash = {"get_meaning" => {}, "get_emoticon" => {}}
  
  emoticons.each do |meaning,emoticon_array|
    emoticon_hash["get_meaning"][emoticon_array[1]] = meaning
    emoticon_hash["get_emoticon"][emoticon_array[0]] = emoticon_array[1]
  end
  emoticon_hash
end


def get_japanese_emoticon(path,emoticon)
  emoticon_hash = load_library(path)
  
  if !emoticon_hash["get_emoticon"][emoticon]
    return "Sorry, that emoticon was not found"
  else
    emoticon_hash["get_emoticon"][emoticon]
  end
end

def get_english_meaning(path,emoticon)
  emoticon_hash = load_library(path)
  
  if !emoticon_hash["get_meaning"][emoticon]
    return "Sorry, that emoticon was not found"
  else
    emoticon_hash["get_meaning"][emoticon]
  end
end