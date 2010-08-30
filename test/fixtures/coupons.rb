Factory.define :coupon do |f|
  f.association :product
  f.discount { "%s.%s" % [(1..5).rand, (0..99).rand] }
  f.begins_on today+(-10..10).rand
  f.ends_on { |c| c.begins_on + (1..10).rand }
end
