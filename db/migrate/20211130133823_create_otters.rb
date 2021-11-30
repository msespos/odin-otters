class CreateOtters < ActiveRecord::Migration[6.1]
  def change
    create_table :otters do |t|
      t.string :name
      t.int :age
      t.int :cuteness
      t.int :softness

      t.timestamps
    end
  end
end
