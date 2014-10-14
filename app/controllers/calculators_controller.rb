class CalculatorsController < ApplicationController
  def index; end
  def wendler
    @program = Program.new
  end
end
