class Sujets < ActiveRecord::Migration[5.2]
  def change
    create_table :sujets do |t|
      t.string :libelle
      t.timestamps
      end
  end
end
