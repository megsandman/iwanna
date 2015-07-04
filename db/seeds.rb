
City.create(name:'East Bay', image:'http://i.imgur.com/HpBT7uF.jpg')
City.create(name:'Monterey Bay', image:'http://i.imgur.com/xTgNLpb.jpg')
City.create(name:'San Francisco', image:'http://i.imgur.com/5DqUUMr.jpg')
City.create(name:'Silicon Valley', image:'http://i.imgur.com/S5aHe0z.jpg')
City.create(name:'Wine Country', image:'http://i.imgur.com/CLLTLYO.jpg')

# activities = ["drinks", "food", "an activity"]
activities = ["drinks", "food"]

activities.each do |activity|
    Activity.create(name: activity)
end

sf_neighborhoods = ["Doesn't Matter", "Dogpatch", "Financial District", "Haight/Cole Valley", "Hayes Valley", "Lower Haight", "The Marina", "The Mission", "Nob Hill", "NOPA", "North Beach", "Pac Heights", "The Richmond", "Russian Hill", "SOMA", "The Sunset", "Tenderloin"]

sf_neighborhoods.each do |neighborhood|
  Neighborhood.create(name: neighborhood, city_id: 3)
end

east_bay_neighborhoods = ["Berkeley", "Doesn't Matter", "Oakland"]
monterey_bay_neighborhoods = ["Carmel", "Doesn't Matter", "Monterey", "Santa Cruz"]
silicon_valley_neighborhoods = ["Doesn't Matter", "Menlo Park", "Mountain View", "Palo Alto", "Palo Alto - University", "Redwood City"]
wine_country_neighborhoods = ["Doesn't Matter", "Healdsburg", "Napa", "Sonoma", "St. Helena"]

east_bay_neighborhoods.each do |neighborhood|
  Neighborhood.create(name: neighborhood, city_id: 1)
end

monterey_bay_neighborhoods.each do |neighborhood|
  Neighborhood.create(name: neighborhood, city_id: 2)
end

silicon_valley_neighborhoods.each do |neighborhood|
  Neighborhood.create(name: neighborhood, city_id: 4)
end

wine_country_neighborhoods.each do |neighborhood|
  Neighborhood.create(name: neighborhood, city_id: 5)
end


genres_drinks = ["something good", "cocktails", "coffee", "a dive bar", "outdoors", "wine bar"]

genres_drinks.each do |genre|
    Genre.create(name: genre, activity_id: 1)
end

genres_food = ["something yummy", "Asian", "brunch", "a burger", "a burrito", "dessert", "fancy", "quick and easy", "pizza", "a salad"]

genres_food.each do |genre|
    Genre.create(name: genre, activity_id: 2)
end