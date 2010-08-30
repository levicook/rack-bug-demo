class Product < ActiveRecord::Base
  belongs_to :brand
  has_many :coupons
end

# == Schema Information
#
# Table name: products
#
#  id          :integer(4)      not null, primary key
#  brand_id    :integer(4)
#  name        :string(255)
#  description :string(255)
#  price       :integer(10)
#  created_at  :datetime
#  updated_at  :datetime
#

