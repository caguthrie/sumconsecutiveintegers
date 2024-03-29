class SumConIntegers

  attr_accessor :num  

  def initialize(num)
    @num = num
    @hash = {}
  end

  def sum_consecutive_exists?
    i = 1
    while i < (@num/2) + 1
      j = i + 1
      sum = i
      @hash[i] ||= []
      return true if @hash[i].include?(sum)
      while true
        sum += j
        @hash[i].push(sum)
        return true if sum == @num
        break if sum > @num
        j += 1
      end
      i += 1
    end
    return false
  end

end
t = Time.now
s = SumConIntegers.new(1)
i = 1
while i < 20000
  puts "#{i}: #{s.sum_consecutive_exists?}"
  i += 1
  s.num = i
end
puts "This took #{Time.now - t} seconds"