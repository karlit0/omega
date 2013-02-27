class CreateStoredSubjectIds < ActiveRecord::Migration
  def change
    create_table :stored_subject_ids do |t|
      t.integer :stored_id

      t.timestamps
    end
  end
end
