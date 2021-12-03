#!/usr/bin/env elixir

input = IO.read(:stdio, :all)
  |> String.split("\n")
  |> Enum.map(&(Integer.parse(&1) |> elem(0)))

Enum.slice(input, 1..-1)
  |> Enum.zip(input)
  |> Enum.filter(fn {x, y} -> x > y end)
  |> length()
  |> IO.puts()
