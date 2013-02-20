class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.datetime :startdate
      t.datetime :enddate
      t.string :customer
      t.string :title
      t.text :description
      t.references :cv

      t.timestamps
    end
    add_index :projects, :cv_id
  end
end
