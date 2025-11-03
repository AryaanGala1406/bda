from collections import defaultdict

def map_step(lines):
    mapped = []
    for line in lines:
        words = line.strip().split()
        for word in words:
            mapped.append((word.lower(), 1))
    return mapped

def shuffle_step(mapped_data):
    shuffled = defaultdict(list)
    for key, value in mapped_data:
        shuffled[key].append(value)
    return shuffled

def reduce_step(shuffled_data):
    reduced = {}
    for key, values in shuffled_data.items():
        reduced[key] = sum(values)
    return reduced

if __name__ == "__main__":
    print("Enter text lines (type 'DONE' when finished):")
    user_lines = []
    while True:
        line = input()
        if line.strip().upper() == 'DONE':
            break
        user_lines.append(line)

    mapped = map_step(user_lines)
    shuffled = shuffle_step(mapped)
    reduced = reduce_step(shuffled)

    print("\n=== Word Count Result ===")
    for word, count in sorted(reduced.items()):
        print(f"{word}: {count}")