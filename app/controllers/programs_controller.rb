class ProgramsController < ApplicationController
  def index
    @program = Program.new
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
end
