class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.string :name
      t.string :level
      t.references :cv

      t.timestamps
    end
    add_index :languages, :cv_id
  end
end
