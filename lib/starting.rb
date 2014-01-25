module Starting
  def week1
    [
      [5, Strength.round_with_smallest_increase(max_lift * 0.60)],
      [5, Strength.round_with_smallest_increase(max_lift * 0.70)],
      [5, Strength.round_with_smallest_increase(max_lift * 0.80)]
    ]
  end

  def week2
    [
      [3, Strength.round_with_smallest_increase(max_lift * 0.65)],
      [3, Strength.round_with_smallest_increase(max_lift * 0.75)],
      [3, Strength.round_with_smallest_increase(max_lift * 0.85)]
    ]
  end

  def week3
    [
      [5, Strength.round_with_smallest_increase(max_lift * 0.70)],
      [3, Strength.round_with_smallest_increase(max_lift * 0.8)],
      [1, Strength.round_with_smallest_increase(max_lift * 0.9)]
    ]
  end
end
