
def test()
  puts "test"
end

def solve(ar, number_coupons_required)
  number_of_candy_bars = 0

  (1..ar).each do |i|
    number_of_candy_bars_of_current_type = number_coupons_required[i] // candy_types
    
    number_of_candy_bars += number_of_candy_bars_of_current_type
  end

  number_of_candy_bars
end

class QuestionClass
  def main
    fptr = open(ENV['OUTPUT_FILE_PATH'], 'w')
    fptr.write("\n")

    # types of candy
    # candy_types = gets().chomp().to_i
    # number_coupons
    number_coupons_required = (gets().chomp()).split(" ")

    ar = []
    for i in (0..candy_types-1) do
        ar_item = (number_coupons_required[i].to_i)
        ar << ar_item
    end

    number_coupons_required = (gets().chomp()).to_i
    outcome = solve(ar, number_coupons_required)
    fptr.write(outcome.to_s + "\n")
    fptr.close()
  end
end

questionObject = QuestionClass.new.main()

puts questionObject