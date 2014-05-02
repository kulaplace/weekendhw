class CreateLiaisons < ActiveRecord::Migration
  def change
    create_table :liaisons do |t|
      t.string :name
      t.text :relation

      t.timestamps
    end
  end
end
