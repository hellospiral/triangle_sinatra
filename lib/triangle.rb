class Triangle
  define_method(:initialize) do |a, b, c|
    @side_a = a
    @side_b = b
    @side_c = c

  end

  define_method(:triangle_type) do
    if (@side_a + @side_b <= @side_c) || (@side_b + @side_c <= @side_a) || (@side_a + @side_c <= @side_b)
      "not a triangle"
    else
      if @side_a == @side_b && @side_b == @side_c && @side_a == @side_c
        "equilateral"
      elsif (@side_a == @side_b && @side_a != @side_c) || (@side_a == @side_c && @side_b != @side_c) || (@side_b == @side_c && @side_a != @side_c)
        "isosceles"
      elsif @side_a != @side_b && @side_b != @side_c && @side_a != @side_c
        "scalene"
      end
    end
  end
end
