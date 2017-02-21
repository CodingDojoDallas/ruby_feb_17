class AddCategoryToProducts < ActiveRecord::Migration[5.0]
  def change
  	add_column :products, :category, :string #choose table, add column name and column type
   end
end
