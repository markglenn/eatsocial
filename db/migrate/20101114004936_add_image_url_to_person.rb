class AddImageUrlToPerson < ActiveRecord::Migration
  def self.up
    add_column :people, :image_url, :string
  end

  def self.down
    remove_column :people, :image_url, :string
  end
end
