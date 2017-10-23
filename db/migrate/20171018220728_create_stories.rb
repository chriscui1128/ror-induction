class CreateStories < ActiveRecord::Migration[5.1]
  def self.up
    create_table :stories, :force => true do |t|
      t.string :name
      t.string :link

      t.timestamps
    end
  end
  
  def self.down
    drop_table :stories
  end
end
