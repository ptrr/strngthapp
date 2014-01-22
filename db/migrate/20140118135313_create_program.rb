class CreateProgram < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.decimal :overhead_press_weight
      t.integer :overhead_press_reps
      t.decimal :deadlift_weight
      t.integer :deadlift_reps
      t.decimal :bench_weight
      t.integer :bench_reps
      t.decimal :squat_weight
      t.integer :squat_reps

      t.timestamps
    end
  end
end
