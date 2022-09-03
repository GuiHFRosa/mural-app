class CreateMurals < ActiveRecord::Migration[7.0]
  def change
    create_table :murals do |t|
      t.string :name
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
