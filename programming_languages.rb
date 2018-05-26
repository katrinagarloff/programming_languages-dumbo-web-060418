  def my_languages
  {
      :oo => {
        :ruby => {
          :type => "interpreted"
        },
        :javascript => {
          :type => "interpreted"
        },
        :python => {
          :type => "interpreted"
        },
        :java => {
          :type => "compiled"
        }
      },
      :functional => {
        :clojure => {
          :type => "compiled"
        },
        :erlang => {
          :type => "compiled"
        },
        :scala => {
          :type => "compiled"
        },
        :javascript => {
          :type => "interpreted"
      }
    }
  }
end

def reformat_languages(languages)
  new_hash = {}
  
  languages.each do |style_key, language|
    language.each do |language_key, data_type|
      data_type.each do |data_type_key, data|
        #puts language_key
        #puts style_key
        #puts data_type_key
        #puts data
        #new_hash[language_key] = {data_type_key => data, :style => style_key}
  end
  end
  end
  new_hash
end

reformat_languages(my_languages)
