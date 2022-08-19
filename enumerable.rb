module MyEnumerable
  def all?
    return 'No blocks given' unless block_given?

    each { |item| return false unless yield item }

    true
  end

  def any?
    return 'No blocks given' unless block_given?

    each do |item|
      return true if yield item
    end
    false
  end

  def filter
    filttered = []
    return filttered.to_enum unless block_given?

    each { |item| filttered.push(item) if yield item }

    filttered
  end
end
