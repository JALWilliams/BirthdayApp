require 'date'

class Calendar

  def initialize (month)
    calendar = {"Janurary": 01 ,
                  "Feburary": 02, 
                  "March": 03, 
                  "April": 04,
                  "May": 05,
                  "June": 06, 
                  "July": 07}
    @month_number = calendar[month]
  end

  def birthday_month?
    month_number == Date.today.strftime("%m")? "Happy BDAY!" : "Not YET your BDAY"
  end

end