class CreateLines < ActiveRecord::Migration[6.0]
  def change
    create_table :lines do |t|
      t.string :name
      t.integer :feed_id

      t.timestamps
    end
  end
end
