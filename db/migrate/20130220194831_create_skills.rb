class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.references :cv

      t.timestamps
    end
    add_index :skills, :cv_id
  end
end
