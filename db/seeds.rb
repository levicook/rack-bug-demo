# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

DatabaseCleaner.clean_with :truncation
Dir["test/fixtures/*.rb"].each { |f| require f }

10.times do # brands ----------------------------------------
  brand = Factory.create(:brand)

  (15..25).rand.times do # products  ------------------------
    product = Factory.create(:product, :brand => brand)

    (20..40).rand.times do # coupons ------------------------
      Factory.create(:coupon, :product => product)

    end
  end
end
