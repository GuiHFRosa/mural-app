class CreateMuralItems < ActiveRecord::Migration[7.0]
  def change
    create_table :mural_items do |t|
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
