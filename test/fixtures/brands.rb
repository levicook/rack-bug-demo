Factory.define :brand do |f|
  f.name { Faker::Lorem.words((1..2).rand).join(' ').titleize }
end
