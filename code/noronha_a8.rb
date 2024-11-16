j = 15  # Example initialization for j
k = (j + 13) / 27

loop do
    break if k > 10
    k += 1
    i = 3 * k - 1
end

puts "Final values - k: #{k}, i: #{i}"
