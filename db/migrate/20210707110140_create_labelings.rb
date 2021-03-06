class CreateLabelings < ActiveRecord::Migration[6.1]
  def change
    create_table :labelings do |t|
      t.references :label, index: true
      t.references :labelable, polymorphic: true, index: true
      t.timestamps null: false
    end
    add_foreign_key :labelings, :labels
  end
end
