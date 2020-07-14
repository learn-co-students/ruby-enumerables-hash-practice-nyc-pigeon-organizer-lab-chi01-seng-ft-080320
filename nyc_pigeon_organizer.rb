require 'pry'
pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}





def nyc_pigeon_organizer(data)

  ## Loops through outer most key ex. color (key) and values ex (purple) , creates a final_hash accumulator 
  
  result = data.each_with_object({}) do |(outer_key, outer_value), final_hash|
    
    ##loops through inner hash value (ex purple is the key, [with names] is the value
    outer_value.each do |key, value|
      
      ##loops through each inner array value which in this case is the individual name for each pidgeon
      value.each do |inner_key|
        
        ##here we assing the inner name as the final hash key if it does not exists and create and mepty hash for it 
        
        if (!final_hash[inner_key])
            final_hash[inner_key] = {}
          end 
          
          ##Validates that the inner_key (in this case name of the pidgeon) does not have the outer most key which is color, gender or lives we assing a value of an empty array
          if(!final_hash[inner_key][outer_key])
            final_hash[inner_key][outer_key] = []
          end 
          ##After the hash with pidegon name as key and either color gender or lives as value is created with a respetive array we push() the key value which is the specific color, gender or place the pidgeon lives in  
          final_hash[inner_key][outer_key].push(key.to_s)
      end 

    end 

  end 
 pp result 
end


nyc_pigeon_organizer(pigeon_data)