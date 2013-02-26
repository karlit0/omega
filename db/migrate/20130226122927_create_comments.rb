class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :subject_id
      t.string :content

      t.timestamps
    end
  end
end
