# Read about factories at http://github.com/thoughtbot/factory_girl

Factory.define :coupon do |f|
  f.product_id 1
  f.discount "9.99"
  f.begins_on "2010-08-30 07:12:38"
  f.ends_on "2010-08-30 07:12:38"
end
