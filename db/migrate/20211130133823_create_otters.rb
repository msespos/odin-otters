class CreateOtters < ActiveRecord::Migration[6.1]
  def change
    create_table :otters do |t|
      t.string :name
      t.integer :age
      t.integer :cuteness
      t.integer :softness

      t.timestamps
    end
  end
end
