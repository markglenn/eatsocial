class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :location
      t.datetime :time
      t.string :image_location

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
