class CreateWstagrams < ActiveRecord::Migration
  def change
    create_table :wstagrams do |t|
      t.text :description
      t.string :picture

      t.timestamps null: false
    end
  end
end
