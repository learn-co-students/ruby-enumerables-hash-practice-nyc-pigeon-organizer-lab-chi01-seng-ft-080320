def nyc_pigeon_organizer(data)
new_hash = {}
  data.each do |key, key2|
    key2.each do |array, input|
      input.each do |element|

        if !new_hash[element]
          new_hash[element] = {}
        end

        if !new_hash[element][key]
          new_hash[element][key] = []
        end

        new_hash[element][key] << array.to_s

      end
    end
  end
  new_hash
end
