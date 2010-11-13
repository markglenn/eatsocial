class CreateSubscriptions < ActiveRecord::Migration
  def self.up
    create_table :subscriptions do |t|
      t.integer :person_id
      t.integer :event_id

      t.timestamps
    end
  end

  def self.down
    drop_table :subscriptions
  end
end
