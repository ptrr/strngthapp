module Starting
  def week1
    [
      [5, Strength.round_with_smallest_increase(max_lift * 0.7)],
      [5, Strength.round_with_smallest_increase(max_lift * 0.75)],
      [5, Strength.round_with_smallest_increase(max_lift * 0.8)]
    ]
  end

  def week2
    [
      [3, Strength.round_with_smallest_increase(max_lift * 0.75)],
      [3, Strength.round_with_smallest_increase(max_lift * 0.8)],
      [3, Strength.round_with_smallest_increase(max_lift * 0.85)]
    ]
  end

  def week3
    [
      [5, Strength.round_with_smallest_increase(max_lift * 0.8)],
      [3, Strength.round_with_smallest_increase(max_lift * 0.85)],
      [1, Strength.round_with_smallest_increase(max_lift * 0.9)]
    ]
  end
end