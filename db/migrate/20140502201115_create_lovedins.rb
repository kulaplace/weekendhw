class CreateLovedins < ActiveRecord::Migration
  def change
    create_table :lovedins do |t|
      t.string :name
      t.date :birth

      t.timestamps
    end
  end
end
