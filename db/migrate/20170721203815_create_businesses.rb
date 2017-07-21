class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.text :name
      t.text :slogan
      t.text :city
      t.text :state
      t.text :street_address
      t.text :zip

      t.timestamps
    end
  end
end
