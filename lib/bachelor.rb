def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |key1, value1|
      if key1["status"] == "Winner"
        return key1["name"].split.first 
      end
    end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, person|
    person.each do |i, e|
      if i["occupation"] == occupation
        return i["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0 
  data.each do |season, person|
    person.each do |i, e|
      if i["hometown"] == hometown
        counter += 1 
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, person|
    person.each do |i, e|
      if i["hometown"] ==  hometown
        return i["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code
  newarr = [] 
  data[season].each do |keys, value|
    newarr << keys["age"].to_f
  end
  bachelor = newarr.inject(:+) / newarr.length
  return bachelor.round
end
