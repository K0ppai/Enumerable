module MyEnumerable
  def all?
    each do |element|
      return false unless yield(element)
    end
    true
  end

  def any?
    each do |element|
      return true if yield(element)
    end
    false
  end

  def filter
    filtered_elements = []
    each do |element|
      filtered_elements << element if yield(element)
    end
    filtered_elements
  end
end
