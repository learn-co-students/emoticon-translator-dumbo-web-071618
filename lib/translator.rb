# require modules here

def load_library(file_path)
  require 'yaml'
emojis = YAML.load_file(file_path)
result = {"get_meaning" => {}, "get_emoticon" => {}} 
emojis.each do |meaning,emotes|
 result["get_meaning"][emotes[1]] = meaning

 result["get_emoticon"][emotes[0]] = emotes[1]
end
return result

end

def get_japanese_emoticon(file_path,emote)
sorry_message =  "Sorry, that emoticon was not found"
emojis = load_library(file_path)

emojis.each do |get_meaning,get_emoticon|
  get_emoticon.each do |x,y|
    if x == emote
      return y
    end
end
end

sorry_message
end

def get_english_meaning(file_path,emote)
  sorry_message =  "Sorry, that emoticon was not found"

  emojis = load_library(file_path)

emojis.each do |get_meaning ,get_emoticon|
  get_meaning.each do |x,y|
    if x == emote
      return y
    end
end
end

sorry_message
end
