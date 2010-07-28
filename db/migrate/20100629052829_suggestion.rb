class Suggestion < ActiveRecord::Migration
  def self.up
    create_table :suggestions do |t|
      t.belongs_to :user, :null => false
      t.string :title, :null => false
      t.string :rating
      t.boolean :is_public, :default => 0
    end
  end

  def self.down
    drop_table :suggestions
  end
end
