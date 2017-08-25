# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string
#  photo_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ApplicationRecord
    
    has_many :players, :class_name => "User"
    has_many :winning_matches, :class_name => "Match", :foreign_key => "winning_team_id", :dependent => :destroy
    has_many :first_team_matches, :class_name => "Match", :foreign_key => "first_team_id", :dependent => :destroy
    has_many :second_team_matches, :class_name => "Match", :foreign_key => "second_team_id", :dependent => :destroy
    
    validates :name, :presence => true
    
    validates :name, :uniqueness => true
end
