class Gossip < ApplicationRecord
    belongs_to :user
    has_many :join_table_tag_to_gossips, dependent: :destroy
    has_many :tags, through: :join_table_tag_to_gossips
end
