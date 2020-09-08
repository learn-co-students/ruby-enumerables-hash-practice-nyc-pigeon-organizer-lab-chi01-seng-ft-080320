require "pry"

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
  results = data.each_with_object({}) do |(level_one_data, level_two_data), new_hash|
    level_two_data.each do |level_three_data, p_names|
      p_names.each do |name|
        if !new_hash[name]
          new_hash[name] = {}
        end 
        if !new_hash[name][level_one_data]
          new_hash[name][level_one_data] = []
        end
        new_hash[name][level_one_data] << level_three_data.to_s
      end
    end
  end
  # p results
end

nyc_pigeon_organizer(pigeon_data)