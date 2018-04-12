def get_name(person)
  return person[:name]
end

def favourite_tv_show(person)
  return person[:favourites][:tv_show]
end

def like_food(person,food)
  fave_foods = person[:favourites][:things_to_eat]
    # for fave_food in fave_foods
    #   return true if food == fave_food
    # end
    # return false
    fave_foods.include? food

end

def add_friend!(person, friend)
  person[:friends].push friend
end

def remove_friend!(person, friend)
  person[:friends].delete friend
end
