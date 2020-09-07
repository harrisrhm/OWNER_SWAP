class CreateHumans < ActiveRecord::Migration[6.0]
  def change
    create_table :humans do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
