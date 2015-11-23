class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.string :code
      t.string :name

      t.timestamps null: false
    end
  end
end
