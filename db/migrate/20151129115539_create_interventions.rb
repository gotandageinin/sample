class CreateInterventions < ActiveRecord::Migration
  def change
    create_table :interventions do |t|
      t.string :code
      t.string :name

      t.timestamps null: false
    end
  end
end
