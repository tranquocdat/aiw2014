class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.string :title
      t.text :body
      t.string :photo
      t.integer :locate_id
      t.integer :course_id
      t.integer :rank_id
      t.timestamps
    end
  end
end
