# This migration comes from refinery_services (originally 1)
class CreateServicesServices < ActiveRecord::Migration

  def up
    create_table :refinery_services do |t|
      t.string :title
      t.text :description
      t.integer :icon_id
      t.integer :position

      t.timestamps
    end

    Refinery::Services::Service.create_translation_table! :title => :string, :description => :text

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-services"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/services/services"})
    end

    drop_table :refinery_services

    Refinery::Services::Service.drop_translation_table!

  end

end
