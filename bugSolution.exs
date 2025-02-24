```elixir
list = [1, 2, 3, 4, 5]

# Solution 1: Using Enum.map
Enum.map(list, fn x ->
  if x == 3 do
    Process.sleep(1000)
  end
  x
end)
|> Enum.each(fn x -> IO.puts(x) end)

# Solution 2: Using Enum.each with Tasks (for true parallelism)
Enum.each(list, fn x ->
  Task.start(fn ->
    if x == 3 do
      Process.sleep(1000)
    end
    IO.puts(x)
  end)
end)
```