class AddMoreFieldsToPost < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :description, :string
  end
end
