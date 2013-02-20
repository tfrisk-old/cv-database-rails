class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.string :title
      t.text :description
      t.references :cv

      t.timestamps
    end
    add_index :educations, :cv_id
  end
end
