class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :date
      t.string :opponent
      t.timestamps
    end
  end
end
