class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :nickname
      t.string :name

      t.timestamps
    end
  end
end
