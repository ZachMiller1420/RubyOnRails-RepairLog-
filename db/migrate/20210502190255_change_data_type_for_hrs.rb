class ChangeDataTypeForHrs < ActiveRecord::Migration[6.1]
  def change
    change_column :flaterates, :hrs, :float
  end
end
