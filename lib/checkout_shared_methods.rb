module CheckSharedMethods
#this  puts the totals in an array and adds the plus to them 
  def subtotal
  	return 0 unless line_items.any?
  	line_items.collect(&:subtotal).inject(:+)
  end

# this bit is to hack the subtotal as the total in the sidebar (as we wont be adding the tax etc)
  def total
  	subtotal
  end
end