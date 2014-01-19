require_relative './starting'
require_relative './advanced'

class Strength
  attr_accessor :one_rep_max, :max_lift, :reps
  def initialize(one_rep_max, reps, use_90_percent=true)
    @one_rep_max = one_rep_max.to_f
    @reps = reps.to_f

    self.class.send(:include, Starting) if use_90_percent
    self.class.send(:include, Advanced) if !use_90_percent
  end

  def one_rep_max
    @one_rep_max
  end

  def program
    {warmup: warm_up, week1: week1, week2: week2, week3: week3, deload: deload}
  end

  def max_lift
    a = (@one_rep_max * @reps)
    b = (1.0/30.0)
    @max_lift = a * b + @one_rep_max
  end

  def warm_up
    [
      [5, Strength.round_with_smallest_increase(max_lift * 0.4)],
      [5, Strength.round_with_smallest_increase(max_lift * 0.5)],
      [3, Strength.round_with_smallest_increase(max_lift * 0.6)]
    ]
  end

  def main_lift
  end


  def deload
    [
      [5, Strength.round_with_smallest_increase(max_lift * 0.4)],
      [5, Strength.round_with_smallest_increase(max_lift * 0.5)],
      [5, Strength.round_with_smallest_increase(max_lift * 0.6)]
    ]
  end

  def bbb(deload=false)
  end

  def calculate
  end

  def self.round_with_smallest_increase(needed_weight)
    return 0 if needed_weight > 10000
    weight = 20.0
    old_weight = 0.0

    while weight < needed_weight
      old_weight = weight
      weight += Strength.min_increase
      if needed_weight - old_weight < 1.25
        return old_weight
      end
      if needed_weight - weight < 1.25
        return weight
      end
    end
    weight
  end

  def self.min_increase
    2.5
  end
end
