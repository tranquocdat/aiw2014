class CreateRanks < ActiveRecord::Migration
  def change
    create_table :ranks do |t|
      t.string :title
      t.text :body
      t.string :photo

      t.timestamps
    end
  end
end
