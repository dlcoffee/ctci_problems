class Problem1
  def run(string)
    counts = Hash.new(0)
    answer = true

    string.split('').each do |c|
      counts[c] += 1

      if counts[c] > 1
        answer = false
        break
      end
    end

    answer
  end

end
