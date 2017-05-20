class AddGroupNameRefineryCategories < ActiveRecord::Migration
  def change
    add_column :refinery_categories, :group_name, :string
  end
end
