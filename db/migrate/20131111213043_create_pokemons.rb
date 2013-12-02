class CreatePokemons < ActiveRecord::Migration
  def up
    create_table :pokemons do |t|
      t.string :name
      t.string :element
    end
  end

  def down
    drop_table :pokemons
  end
end
