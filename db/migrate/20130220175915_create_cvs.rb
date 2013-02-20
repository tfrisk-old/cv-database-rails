class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :forename
      t.string :surname
      t.string :title
      t.text :description
      t.text :freetext

      t.timestamps
    end
  end
end
