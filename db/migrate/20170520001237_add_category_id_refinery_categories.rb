class AddCategoryIdRefineryCategories < ActiveRecord::Migration
  def change
    add_column :refinery_categories, :category_id, :string
  end
end