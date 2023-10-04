class CreateTwwets < ActiveRecord::Migration[7.0]
  def change
    create_table :twwets do |t|
      t.string :message
      t.datetime :tdate

      t.timestamps
    end
  end
end
