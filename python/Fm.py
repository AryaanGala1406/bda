def get_trailing_zeros(n):
    """Count the number of trailing zeros in binary representation of n.
    If n is 0, return 0."""
    if n == 0:
        return 0
    count = 0
    while n & 1 == 0:
        n >>= 1
        count += 1
    return count

data_stream = input("Enter numbers separated by space: ").split()
data_stream = [int(x) for x in data_stream]

print("Enter hash function of the form h(x) = (a*x + b) % m")
a = int(input("Enter a: "))
b = int(input("Enter b: "))
m = int(input("Enter m: "))

table = []
max_bits = 0
max_r = 0

for x in data_stream:
    h = (a * x + b) % m
    binary = bin(h)[2:]
    max_bits = max(max_bits, len(binary))
    r = get_trailing_zeros(h)
    max_r = max(max_r, r)
    table.append((x, h, binary, r))

print("\n{:<5} {:<12} {:<12} {:<5}".format("x", "hash value", "binary", "r"))
print("-" * 40)
for x, h, binary, r in table:
    binary_padded = binary.zfill(max_bits)  # pad to max bits
    print("{:<5} {:<12} {:<12} {:<5}".format(x, h, binary_padded, r))

R = 2 ** max_r
print("\nMaximum trailing zeros observed (r):", max_r)
print("Estimated number of distinct elements (R = 2^r):", R)