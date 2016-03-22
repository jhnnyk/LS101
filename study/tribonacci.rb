def tribonacci(signature,n)

  loop do
    signature[signature.size] = signature[signature.size - 1] +
                                signature[signature.size - 2] +
                                signature[signature.size - 3]
    break if signature.size == n
  end
  
  signature
end

p tribonacci([1, 1, 1], 10)
p tribonacci([0, 0, 1], 10)
p tribonacci([0, 1, 1], 10)
