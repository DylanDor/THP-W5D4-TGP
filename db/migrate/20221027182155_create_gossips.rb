class CreateGossips < ActiveRecord::Migration[7.0]
  def change
    create_table :gossips do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
    add_reference :gossips, :user, foreign_key: true
  end
end
