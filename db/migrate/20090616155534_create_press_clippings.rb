class CreatePressClippings < ActiveRecord::Migration
  def self.up
    create_table :press_clippings do |t|
      t.string :title, :pdf_file_name, :pdf_content_type, :cover_file_name, :cover_content_type
      t.integer :pdf_file_size, :cover_file_size
      t.datetime :pdf_updated_at, :cover_updated_at
      t.text :teaser, :content
      t.timestamps
    end
  end

  def self.down
    drop_table :press_clippings
  end
end
