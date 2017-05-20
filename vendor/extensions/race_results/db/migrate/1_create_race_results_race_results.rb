class CreateRaceResultsRaceResults < ActiveRecord::Migration

  def up
    create_table :refinery_race_results do |t|
      t.integer :rider_id
      t.integer :event_id
      t.integer :category_id
      t.integer :rider_number
      t.integer :number_place
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-race_results"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/race_results/race_results"})
    end

    drop_table :refinery_race_results

  end

end
