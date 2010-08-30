Factory.define :brand do |f|
  f.name { Faker::Company.name }
end
