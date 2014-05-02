class AddSpouseToUser < ActiveRecord::Migration
  def change
    add_column :users, :spouse, :string
  end
end
