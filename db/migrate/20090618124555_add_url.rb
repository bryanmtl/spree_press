class AddUrl < ActiveRecord::Migration
  def self.up
    add_column :press_clippings, :url, :string
  end

  def self.down
    remove_column :press_clippings, :url
  end
end