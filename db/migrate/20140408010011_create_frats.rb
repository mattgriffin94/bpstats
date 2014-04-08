class CreateFrats < ActiveRecord::Migration
  def change
    create_table :frats do |t|
      t.string :name

      t.timestamps
    end
  end
end
