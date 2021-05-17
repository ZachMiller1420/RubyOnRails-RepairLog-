class CreateFlaterates < ActiveRecord::Migration[6.1]
  def change
    create_table :flaterates do |t|
      t.date :date
      t.string :ro_num
      t.string :year_make_model
      t.string :work
      t.integer :hrs

      t.timestamps
    end
  end
end
