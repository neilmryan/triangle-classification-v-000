class Triangle

	attr_reader :s1, :s2, :s3

	def initialize(s1, s2, s3)
		if s1 == 0 || s2 == 0 || s3 == 0
			raise TriangleError
		elsif s1 < 0 || s2 < 0 || s3 < 0
			raise TriangleError
		elsif s1 + s2 <= s3 || s1 + s3 <= s2 || s2 + s3 <= s1
			raise TriangleError
		else
			@s1 = s1
			@s2 = s2
			@s3 = s3
		end
	end

	def kind
		if s1 == s2 && s2 == s3
			:equilateral
		elsif s1 != s2 && s1 != s3 && s2 != s3
			:scalene
		elsif s1 == s2 || s1 == s3 || s2 == s3
			:isosceles
		end
	end

end

class TriangleError < StandardError
end