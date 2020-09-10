class CreateKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :kittens do |t|
      t.string :name, :null => false
      t.string :age, :null => false
      t.integer :cuteness
      t.integer :softness
      t.timestamps
    end
  end
end
