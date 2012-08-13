class TrackMilesEarned < ActiveRecord::Migration
  
  def change
    add_column :users, :miles_earned, :integer, :default => 0
  end
  
end
