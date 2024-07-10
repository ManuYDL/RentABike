class AddColomnToBikes < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :description, :string
  end
end
