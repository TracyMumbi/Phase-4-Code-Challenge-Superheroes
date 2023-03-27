20.times do 
    hero = Hero.create(
        name: Faker::Games::Heroes.name,
        super_name: Faker::Superhero.name
        )
end

50.times do
    power = Power.create(
        name: Faker::Superhero.power,
        description: Faker::Games::Witcher.quote
    )
end

30.times do
    hero_powers = HeroPower.create(
        strength: Faker::Games::Heroes.specialty,
        hero_id: rand(1..20),
        power_id: rand(1..50)
    )
end
