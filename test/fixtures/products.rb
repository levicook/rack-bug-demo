Factory.define(:product) do |f|
  f.association :brand
  f.sequence(:name) { |n| "Product #{n}" }
  f.description { Faker::Lorem.sentence }
  f.price { "%s.%s" % [(10..50).rand, (0..99).rand] }
end
