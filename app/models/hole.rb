# == Schema Information
#
# Table name: holes
#
#  id          :integer          not null, primary key
#  course_id   :integer
#  hole_number :integer
#  par         :integer
#  yardage     :integer
#  handicap    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Hole < ApplicationRecord
    
    belongs_to :course
    
    has_many :scores, :dependent => :destroy
    
    validates :course_id, :uniqueness => {:scope => :hole_number }
    
    validates :course_id, :presence => true
    validates :hole_number, :presence => true
    validates :par, :presence => true
    validates :yardage, :presence => true
    validates :handicap, :presence => true
    
end
