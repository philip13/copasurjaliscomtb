# This migration comes from refinery_riders (originally 1)
class CreateRidersRiders < ActiveRecord::Migration

  def up
    create_table :refinery_riders do |t|
      t.string :first_name
      t.string :last_name
      t.string :mother_surname
      t.date :birdth_date
      t.string :address
      t.string :city
      t.string :state
      t.string :phone_number
      t.string :blood_type
      t.integer :rider_number
      t.integer :photo_id
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-riders"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/riders/riders"})
    end

    drop_table :refinery_riders

  end

end
