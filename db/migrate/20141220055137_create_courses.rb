class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title
      t.text :body
      t.string :photo

      t.timestamps
    end
  end
end
