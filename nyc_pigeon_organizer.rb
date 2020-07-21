def nyc_pigeon_organizer(data)
 results = data.each_with_object({}) do |(key, value), final|
    value.each do |inner, names|
      names.each do |name|
        if !final[name]
          final[name] = {}
        end
        
        if !final[name][key]
          !final[name][key] = []
        end
        final[name][key].push(inner.to_s)
      end 
    end
 
  end
end 