class AddProductToBusinesses < ActiveRecord::Migration[5.1]
  def change
    add_column :businesses, :product, :string
  end
end
