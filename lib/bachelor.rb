def get_first_name_of_season_winner(data, season)
  # code here
	data[season].each do |contestant|
		contestant.each do |attrib,val|
			if val == "Winner"
				return contestant["name"].split(" ")[0]
			end
		end
	end
end

def get_contestant_name(data, occupation)
  # code here
	data.each do |season, _|
		_.each do |contestant|
			contestant.each do |attrib,val|
				if val == occupation
					return contestant["name"]
				end
			end
		end
	end
end

def count_contestants_by_hometown(data, hometown)
  # code here
	final_count_a = 0
	data.each do |season, _|
		_.each do |contestant|
			contestant.each do |attr,val|
				if val == hometown
					final_count_a  += 1
				end
			end
		end
	end
	return final_count_a
end

def get_occupation(data, hometown)
  # code here
	data.each do |season, _|
		_.each do |contestant|
			contestant.each do |attr,val|
				if val == hometown
					return contestant["occupation"]
				end
			end
		end
	end
end

class Array
  def sum
    inject(0.0) { |result, el| result + el }
  end

  def mean 
    sum / size
  end
end

def get_average_age_for_season(data, season)
  # code here
	final_a = 0
	final_a_a = []
	data[season].each do |_|
		_.each do |attrib,value|
			if attrib == "age"
				final_a += value.to_f
				final_a_a << 1
			end
		end
	end
	return (final_a / final_a_a.count).round
end
