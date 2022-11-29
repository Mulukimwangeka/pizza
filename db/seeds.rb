Restaurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all

#faker for pizza
30.times do
    Pizza.create(
        name: Faker::Food.ingredient,
        #has 3 ingredients in an array
        ingredients: [Faker::Food.ingredient, Faker::Food.ingredient, Faker::Food.ingredient],

    )

end

#faker for restaurant
30.times do
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address
    )
end

#faker for restaurant_pizza

30.times do
    RestaurantPizza.create(
        restaurant_id:Restaurant.all.sample.id,
        pizza_id: Pizza.all.sample.id
    )
end