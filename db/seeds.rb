# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

DatabaseCleaner.clean_with :truncation
Dir["test/fixtures/*.rb"].each { |f| require f }

20.times { Factory.create(:brand) }
@brands = Brand.all

200.times { Factory.create(:product, :brand => @brands.rand) }
