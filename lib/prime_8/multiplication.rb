module Multiplication
  def table_rows(array)
    array.collect {|a| row_columns(a,array)}
  end

  def row_columns(int,array)
    [int] + array.collect {|a| int * a}
  end
end
