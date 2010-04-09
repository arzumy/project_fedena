class CreateGradings < ActiveRecord::Migration
  def self.up
    create_table :gradings do |t|
      t.string     :name
      t.integer    :min_score
      t.timestamps
    end
  end

  def self.down
    drop_table :gradings
  end
end
