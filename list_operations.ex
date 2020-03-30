defmodule ListOperations do
  @moduledoc false

  #Reverse
  def reverse([]), do: []
  def reverse([h|t]), do: reverse(t) ++ [h]

  #Find
  def find(_,[]), do: IO.puts("not found")
  def find(x, [x|_]), do: IO.puts("found")
  def find(x, [_|t]), do: find(x,t)

  #Delete
  def delete(_,[]), do: []
  def delete(x, [x|t]), do: t
  def delete(x, [h|t]), do: [h|delete(x, t)]

  #Flatten
  def flatten([]), do: []
  def flatten([l|x]), do: l ++ flatten(x)

  #Square
  def square([]), do: []
  def square([h|t]), do: [h*h|square(t)]

  #Filter -> ListOperations.filter((fn(x) -> rem(x,2) == 0 end), [1,2,3,4,5,6])
  def filter(_, []), do: []
  def filter(f, [h|t]) do
    if f.(h) do
      [h|filter(f,t)]
    else
      filter(f,t)
    end
  end

  #Max
  def list_max([]), do: IO.puts("empty list")
  def list_max([h|t]), do: IO.puts(list_maxx(h, t))

  def list_maxx(x, []), do: x
  def list_maxx(x, [h|t]) do
    if x < h do
      list_maxx(h,t)
    else
      list_maxx(x,t)
    end
  end

  #Min
  def list_min([]), do: IO.puts("empty list")
  def list_min([h|t]), do: IO.puts(list_minn(h, t))

  def list_minn(x, []), do: x
  def list_minn(x, [h|t]) do
    if x > h do
      list_minn(h,t)
    else
      list_minn(x,t)
    end
  end

end
