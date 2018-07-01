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
emojis = load_library(file_path)

emojis.each do |meaning,emotes|
  if 
 get_emoticon[emotes[1]] = meaning

 get_meaning[emotes[0]] = emotes[1]
end

end

def get_english_meaning
  # code goes here
end