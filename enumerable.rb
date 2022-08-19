module MyEnumerable

  def all?
    return 'No blocks given' unless block_given?

    each do |item|
      return false unless yield item
    end

    true
  end
  def any?
    return 'No blocks given' unless block_given?
    each do |item|
      return true if yield item
    end
    false
  end
end
