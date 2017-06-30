class CreateDinosaurs < ActiveRecord::Migration[5.1]
  def change
    create_table :dinosaurs do |t|
      t.string :name
      t.integer :age
      t.string :description

      t.timestamps
    end
  end
end
