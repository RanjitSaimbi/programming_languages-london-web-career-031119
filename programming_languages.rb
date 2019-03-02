require 'pry'

def reformat_languages(languages)
 new_hash = {}
 languages.each do |lang_class, data|
   data.each do |language, type|
     if new_hash[language]
       new_hash[language][:style] << lang_class
     else 
      new_hash[language] = {type: type[:type], style: [lang_class]}
     end 
   end 
 end
 new_hash
end
