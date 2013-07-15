class CreatePost < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :category
      t.timestamps
    end
  end

  def down
  end
end
