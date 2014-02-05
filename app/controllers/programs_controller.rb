class ProgramsController < ApplicationController
  def index
    @program = Program.new
  end

  def create
  end

  def get_strong
    values = params[:program]
    program = {
      overhead_press: Strength.new(values[:overhead_press_weight], values[:overhead_press_reps]).program,
      deadlift: Strength.new(values[:deadlift_weight], values[:deadlift_reps]).program,
      bench: Strength.new(values[:bench_weight], values[:bench_reps]).program,
      squat: Strength.new(values[:squat_weight], values[:squat_reps]).program
    }
    render json: program
  end

  def level
    values = params[:program]
    program = {
      overhead_press: Strength.new(values[:overhead_press_weight], values[:overhead_press_reps]).max_lift.round(1),
      deadlift: Strength.new(values[:deadlift_weight], values[:deadlift_reps]).max_lift.round(1),
      bench: Strength.new(values[:bench_weight], values[:bench_reps]).max_lift.round(1),
      squat: Strength.new(values[:squat_weight], values[:squat_reps]).max_lift.round(1)
    }
    render json: program
  end
end
