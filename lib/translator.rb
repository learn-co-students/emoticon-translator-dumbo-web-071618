# require modules here
require "yaml"

def load_library(path)
  # code goes here
  #YAML.load(File.open(File.join(File.dirname(__FILE__), path)))
  hash = YAML.load_file(path)
  res = {
    "get_meaning" => {},
    "get_emoticon" => {}
  }
  hash.each do |meaning, emoticons|
    res["get_meaning"][emoticons[1]] = meaning
    res["get_emoticon"][emoticons[0]] = emoticons[1]
  end
  res
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  x = load_library(file_path)["get_emoticon"]
  x.keys.include?(emoticon) ? x[emoticon] : "Sorry, that emoticon was not found"
end

def get_english_meaning(file_path, emoticon)
  # code goes here
  x = load_library(file_path)["get_meaning"]
  x.keys.include?(emoticon) ? x[emoticon] : "Sorry, that emoticon was not found"
end