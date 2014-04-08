class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.integer :frat_id
      t.integer :games
      t.integer :wins
      t.integer :sinks

      t.timestamps
    end
  end
end
