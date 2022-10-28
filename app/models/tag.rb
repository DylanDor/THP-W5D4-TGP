class Tag < ApplicationRecord
    has_many :join_table_tag_to_gossips, dependent: :destroy
    has_many :gossips, through: :join_table_tag_to_gossips
end
