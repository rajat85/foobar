class Foobar
  def initialize(l_bould = 1, u_bound)
    fail "lower and upper bound should be number." unless l_bould.is_a?(Integer) && u_bound.is_a?(Integer)
    @l_bound, @u_bound = l_bould, u_bound
  end

  def is_foobar?(num)
    is_foo?(num) && is_bar?(num)
  end

  def is_foo?(num)
    num % 3 === 0
  end

  def is_bar?(num)
    num % 5 === 0
  end

  def print_series
    (@l_bound..@u_bound).each do |num|
      if is_foobar?(num)
        print_str(num, 'foobar')
      elsif is_foo?(num)
        print_str(num, 'foo')
      elsif is_bar?(num)
        print_str(num, 'bar')
      end
    end
  end

  def print_str(num, type)
    puts "#{num}: #{type}"    
  end
end