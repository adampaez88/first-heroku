class CreateFlakes < ActiveRecord::Migration[6.0]
  def change
    create_table :flakes do |t|
      t.string :shape

      t.timestamps
    end
  end
end
