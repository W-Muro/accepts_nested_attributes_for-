class CreateWorkPlaces < ActiveRecord::Migration[6.0]
  def change
    create_table :work_places do |t|
      t.references :work
      t.references :place

      t.timestamps
    end
  end
end
