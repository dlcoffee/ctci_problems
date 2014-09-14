class Problem3

  def run(str1, str2)
    # returns whether two strings are permutations of each other
    
    s1 = str1.delete(" ")
    s2 = str2.delete(" ")

    answer = true

    if s1.length == s2.length
      s1 = s1.chars.sort_by(&:downcase)
      s2 = s2.chars.sort_by(&:downcase)

      if s1 == s2
        answer = true
      else
        answer = false
      end
    else
      answer = false
    end

    answer

  end

end
