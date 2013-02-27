class StoredSubjectId < ActiveRecord::Base
  attr_accessible :stored_id

  validates :stored_id, presence: true
end
