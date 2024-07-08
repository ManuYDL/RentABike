class CreateBikes < ActiveRecord::Migration[7.1]
  def change
    create_table :bikes do |t|
      t.string :color
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
