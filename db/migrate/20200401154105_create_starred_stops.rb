class CreateStarredStops < ActiveRecord::Migration[6.0]
  def change
    create_table :starred_stops do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :stop, null: false, foreign_key: true
      t.belongs_to :line, null: false, foreign_key: true

      t.timestamps
    end
  end
end
