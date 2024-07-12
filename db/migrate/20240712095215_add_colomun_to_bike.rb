class AddColomunToBike < ActiveRecord::Migration[7.1]
  def change
    add_column :bikes, :shortd, :string
  end
end
