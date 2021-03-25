class CreateOmdbs < ActiveRecord::Migration[6.1]
  def change
    create_table :omdbs do |t|
      t.string :imdbID
      t.string :Title
      t.text :Year
      t.text :Poster
      t.text :Plot

      t.timestamps
    end
  end
end
