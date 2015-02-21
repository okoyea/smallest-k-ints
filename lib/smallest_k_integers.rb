module SmallestKIntegers
  def self.find(array, k)
    result = []

    int_value = array.median_of_medians(k)

    array.each do |int|
      if int < int_value
        result << int
      end
    end

    result << int_value
  end
end

class Array
  def median_of_medians(array = self, k)
    return select_index(array, k) if (array.length <= 5)

    medians = []
    left = []
    right = []

    array.each_slice(5) do |slice|
      medians << select_index(slice, slice.length/2)
    end

    median = median_of_medians(medians, medians.length/2)

    array.each do |int|
      if int < median
        left << int
      elsif int > median
       right << int
      else
        nil
      end
    end

    median_position = left.length + 1

    case
    when k == median_position then median
    when k < median_position then median_of_medians(left, k)
    else median_of_medians(right, k - median_position)
    end
  end

  def select_index(array, k)
    array.sort[k - 1]
  end
end