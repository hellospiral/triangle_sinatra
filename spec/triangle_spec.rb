require('rspec')
require('triangle')

describe(Triangle) do
  describe('#triangle_type') do

    it('returns "equilateral" if all sides are equal') do
      new_triangle = Triangle.new(2, 2, 2)
      expect(new_triangle.triangle_type()).to(eq("equilateral"))
    end

    it('returns "isosceles" if 2 sides are equal') do
      new_triangle = Triangle.new(2, 2, 3)
      expect(new_triangle.triangle_type()).to eq("isosceles")
    end

    it('returns "scalene" if no sides are equal') do
      new_triangle = Triangle.new(5, 4, 3)
      expect(new_triangle.triangle_type()).to eq("scalene")
    end

    it('returns "not a triangle" if any two sides add up to less than the third side') do
      new_triangle = Triangle.new(44, 2, 1)
      expect(new_triangle.triangle_type()).to eq("not a triangle")
    end

    it('returns "not a triangle" if any two sides add up to be equal to the third side') do
      new_triangle = Triangle.new(44, 22, 22)
      expect(new_triangle.triangle_type()).to eq("not a triangle")
    end

    it('returns "not a triangle" if any side == 0') do
      new_triangle = Triangle.new(44, 0, 22)
      expect(new_triangle.triangle_type()).to eq("not a triangle")
    end

    it('returns "not a triangle" if any side is a negative number') do
      new_triangle = Triangle.new(44, 22, -22)
      expect(new_triangle.triangle_type()).to eq("not a triangle")
    end

  end
end
