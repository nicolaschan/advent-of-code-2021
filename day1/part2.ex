#!/usr/bin/env elixir

input = IO.read(:stdio, :all)
  |> String.split("\n")
  |> Enum.map(&(Integer.parse(&1) |> elem(0)))

sums = Enum.zip([input, Enum.slice(input, 1..-1), Enum.slice(input, 2..-1)])
  |> Enum.map(fn {x, y, z} -> x + y + z end)

Enum.slice(sums, 1..-1)
  |> Enum.zip(sums)
  |> Enum.filter(fn {x, y} -> x > y end)
  |> length()
  |> IO.puts()
