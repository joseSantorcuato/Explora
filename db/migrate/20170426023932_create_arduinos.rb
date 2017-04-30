class CreateArduinos < ActiveRecord::Migration[5.0]
  def change
    create_table :arduinos do |t|
      t.string :texto
      t.integer :valor
      t.date :fecha

      t.timestamps
    end
  end
end
