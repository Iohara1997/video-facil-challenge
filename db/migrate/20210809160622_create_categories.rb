class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :title
      t.boolean :favorite

      t.timestamps
    end
  end
end
