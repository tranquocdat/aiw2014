class CreateLocates < ActiveRecord::Migration
  def change
    create_table :locates do |t|
      t.string :title
      t.text :body
      t.string :photo

      t.timestamps
    end
  end
end
