# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  subject_id :integer
#  content    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ActiveRecord::Base
  attr_accessible :content, :subject_id

  belongs_to :subject

  validates :content, presence: true, length: { maximum: 50 }
  validates :subject_id, presence: true
end
