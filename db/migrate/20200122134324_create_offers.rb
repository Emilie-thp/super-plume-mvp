class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :seller_title
      t.string :seller_first_name
      t.string :seller_last_name
      t.string :seller_adress
      t.string :seller_zipcode
      t.string :seller_city
      t.string :buyer_title
      t.string :buyer_first_name
      t.string :buyer_last_name
      t.string :buyer_adress
      t.string :buyer_zipcode
      t.string :buyer_city
      t.string :buyer_email
      t.string :property_adress
      t.string :property_zipcode
      t.string :property_city
      t.string :property_type
      t.string :property_surface
      t.float :property_price
      t.string :property_price_letters
      t.date :date_max

      t.timestamps
    end
  end
end
