class Lists
  def self.merge(lists)
    merged = []

    lists.each do |list|
      list.each do |e|
        merged << e
      end
    end

    merged
  end

  def self.sort(list)
    bubble_sort(list)
  end

  private

  def self.bubble_sort(list)
    swapped = true

    while swapped
      swapped = false
      (list.length - 1).times do |index|
        current_element = list[index]
        next_element = list[index + 1]
        if current_element > next_element
          list[index] = next_element
          list[index + 1] = current_element
          swapped = true
        end
      end
    end

    list
  end
end
