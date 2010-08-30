class Coupon < ActiveRecord::Base
  belongs_to :product
end

# == Schema Information
#
# Table name: coupons
#
#  id         :integer(4)      not null, primary key
#  product_id :integer(4)
#  discount   :integer(10)
#  begins_on  :datetime
#  ends_on    :datetime
#  created_at :datetime
#  updated_at :datetime
#

