# == Schema Information
#
# Table name: subjects
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  grade      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subject < ActiveRecord::Base
  attr_accessible :grade, :name
  	has_many :comments

	validates :name, presence: true, length: { maximum: 50 }
	validates :grade, presence: true, inclusion: { in: 1..5 }	  
end
