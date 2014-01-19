class Program < ActiveRecord::Base
  attr_accessor :overhead_press_weight, :overhead_press_reps, :squat_weight, :squat_reps,
                :deadlift_weight, :deadlift_reps, :bench_weight, :bench_reps
end
