# == Schema Information
#
# Table name: matches
#
#  id                  :integer          not null, primary key
#  name                :string
#  course_id           :integer
#  tee_time            :datetime
#  winning_team_id     :integer
#  home_team_id        :integer
#  away_team_id        :integer
#  booth_player_1_id   :integer
#  booth_player_2_id   :integer
#  kellogg_player_1_id :integer
#  kellogg_player_2_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Match < ApplicationRecord
    
    belongs_to :winning_team, :class_name => "Team"
    belongs_to :home_team, :class_name => "Team"
    belongs_to :away_team, :class_name => "Team"
    belongs_to :booth_player_1, :class_name => "User"
    belongs_to :booth_player_2, :class_name => "User"
    belongs_to :kellogg_player_1, :class_name => "User"
    belongs_to :kellogg_player_2, :class_name => "User"
    belongs_to :course
    
    has_many :scores, :dependent => :destroy
    
end
