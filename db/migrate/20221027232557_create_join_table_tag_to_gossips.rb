class CreateJoinTableTagToGossips < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_tag_to_gossips do |t|

      t.timestamps
    end
    add_reference :join_table_tag_to_gossips, :tag, foreign_key: true
    add_reference :join_table_tag_to_gossips, :gossip, foreign_key: true
  end
end
