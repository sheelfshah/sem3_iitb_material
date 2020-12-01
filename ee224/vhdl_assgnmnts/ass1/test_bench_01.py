def get_binary(n):
    b = bin(n)
    b = b[2:]
    b = "0" * (4 - len(b)) + b
    return b

for i in range(16):
    for j in range(4):
        b = get_binary(i)
        print("TB" + str(j) + "<='" + b[j] + "';")
    print("wait for 5 ns;")
    print()
