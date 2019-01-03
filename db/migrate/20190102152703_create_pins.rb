class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.string :ipath
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
