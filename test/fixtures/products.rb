Factory.define :product do |f|
  f.association :brand
  f.name "MyString"
  f.description "MyString"
  f.price "9.99"
end
