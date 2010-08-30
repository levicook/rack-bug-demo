class CreateCoupons < ActiveRecord::Migration
  def self.up
    create_table :coupons do |t|
      t.integer :product_id
      t.decimal :discount
      t.datetime :begins_on
      t.datetime :ends_on

      t.timestamps
    end
  end

  def self.down
    drop_table :coupons
  end
end
