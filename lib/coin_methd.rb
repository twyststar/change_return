class String
  define_method(:coin_methd) do
    change_arry = [0,0,0,0]
    counter = self.to_i
    until counter.==(0)
      if (counter /25) >= 1
        change_arry[0] = (counter /25)
        counter = counter - ((counter /25) * 25)
      elsif (counter /10) >= 1
        change_arry[1]=(counter /10)
        counter = counter - ((counter /10) * 10)
      elsif (counter /5) >= 1
        change_arry[2]=(counter /5)
        counter = counter - ((counter /5) * 5)
      else (counter /1) >= 1
        change_arry[3]=(counter /1)
        counter = counter - ((counter /1) * 1)
      end
    end
    change_arry
  end

end
