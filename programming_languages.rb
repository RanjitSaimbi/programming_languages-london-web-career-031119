require 'pry'

def reformat_languages(languages)
  new_hash = {}
  languages.each do |style, langs|
    langs.each do |name, type|
      if new_hash[name]
        new_hash[name][:style] << style
      else
        new_hash[name] = {style: [style], type: type[:type] }
      end
    end 
  end
  new_hash
end
