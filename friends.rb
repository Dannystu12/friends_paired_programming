def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def like_food(person,food)
  fave_foods = person[:favourites][:things_to_eat]
  fave_foods.include? food
end

def add_friend!(person, friend)
  person[:friends].push friend
end

def remove_friend!(person, friend)
  person[:friends].delete friend
end

def total_money(people)
  result = 0
  people.each {|person| result += person[:monies].to_f }
  result
end

def loan_money(lender, lendee, amount)
  lender[:monies] -= amount
  lendee[:monies] += amount
end

def concat_fav_foods(people)
  result = []
  people.each{|person| result.concat person[:favourites][:things_to_eat]}
  result
end

def no_friends(people)
  result = []
  people.each {|person| result.push(person) if person[:friends].empty?}
  result
end
