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
  extra_style = []
  languages.each do |style_key, language|
    language.each do |language_key, data_type|
      data_type.each do |data_type_key, data|
        #puts language_key
        #puts style_key
        #puts data_type_key
        #puts data
        if new_hash[language_key]
          extra_style << new_hash[language_key][:style] << style_key
          new_hash[language_key][:style] = extra_style
        else
          extra_style << style_key
        new_hash[language_key] = {data_type_key => data, :style => extra_style}
      end
  end
  end
  end
  new_hash
end


