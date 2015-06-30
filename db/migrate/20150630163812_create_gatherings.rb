class CreateGatherings < ActiveRecord::Migration
  def change
    create_table :gatherings do |t|
      t.string :location
      t.datetime :start_at
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
