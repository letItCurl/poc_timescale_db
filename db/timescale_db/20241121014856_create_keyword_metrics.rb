class CreateKeywordMetrics < ActiveRecord::Migration[8.0]
  def change
    create_table :keyword_metrics do |t|
      t.string :keyword
      t.integer :volume

      t.timestamps
    end
  end
end
