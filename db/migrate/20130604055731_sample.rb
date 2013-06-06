class Sample < ActiveRecord::Migration
  def up
    create_table :sample do |t|
      t.string :name
    end
  end

  def down
  end
end
