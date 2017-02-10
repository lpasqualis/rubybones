class CreateExample < ActiveRecord::Migration[5.0]

  def change

    create_table :example do |t|
      t.string :some_string
      t.integer :some_int
      t.datetime :some_datetime
      t.boolean :some_bool
      t.text :some_text
      t.timestamps
    end

  end
end
