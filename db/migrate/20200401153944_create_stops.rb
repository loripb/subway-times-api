class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.string :stop_id
      t.string :name

      t.timestamps
    end
  end
end
