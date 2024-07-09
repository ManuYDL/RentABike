class AddNameToBike < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :name, :string
    add_column :bikes, :image, :string
  end
end
