class String
  define_method(:coin_methd) do
    change_arry = []
    counter = self.to_i
    until counter.==(0)
      if (counter /25) >= 1
        change_arry.push((counter /25))
        counter = counter - ((counter /25) * 25)
      elsif (counter /10) >= 1
        change_arry.push((counter /10))
        counter = counter - ((counter /10) * 10)
      elsif (counter /5) >= 1
        change_arry.push((counter /5))
        counter = counter - ((counter /5) * 5)
      else (counter /1) >= 1
        change_arry.push((counter /1))
        counter = counter - ((counter /1) * 1)
      end
    end
    change_arry
  end

end


# counter = total change
# until counter.==(0)

# if (counter /25) >= 1
#   change_arry.push((counter /25).floor)
#   counter = counter - (change_arry[0] * 25)
# elsif (counter /10) >= 1
#   change_arry.push((counter /10).floor)
#   counter = counter - (change_arry[0] * 10)
# end

#   puts "Hello"
#   counter = counter.-(qrts * 25)
# end
