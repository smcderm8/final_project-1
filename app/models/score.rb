# == Schema Information
#
# Table name: scores
#
#  id         :integer          not null, primary key
#  score      :integer
#  match_id   :integer
#  player_id  :integer
#  hole_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Score < ApplicationRecord
    
    belongs_to :player, :class_name => "User"
    belongs_to :match
    belongs_to :hole
    
    validates :player_id, :uniqueness => {:scope => :hole_id }
    
    
end
