
# coding:utf-8
require 'open-uri' 
require 'nokogiri' 

# URL，変更しました ((s-:))
url = 'http:/earth-words.org/archives/2746' 
charset = nil

html = open(url) do |f|
  charset = f.charset 
  f.read 
end

# htmlを解析し、オブジェクト化
page = Nokogiri::HTML.parse(html, nil, charset) 

# 名言は<blockquote>タグに囲まれている
shuzo_meigen = page.search('blockquote') 

# shuzo_meigenで取得したデータをテキストに変換
shuzo_meigen.each do |phrase|
  print phrase.text.gsub("\r",'')
end
