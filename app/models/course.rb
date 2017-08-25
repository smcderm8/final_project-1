# == Schema Information
#
# Table name: courses
#
#  id         :integer          not null, primary key
#  image_url  :string
#  name       :string
#  address    :string
#  par        :integer
#  rating     :integer
#  slope      :integer
#  yardage    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Course < ApplicationRecord
    
    has_many :matches
    has_many :holes, :dependent => :destroy
    
    validates :name, :uniqueness => {:scope => :address }
    validates :address, :presence => true
    validates :par, :presence => true

    
end
