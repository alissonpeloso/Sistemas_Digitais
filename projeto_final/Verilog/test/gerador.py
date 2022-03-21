

with open("input.txt", 'w') as fin:
    with open("output.txt", 'w') as fout:
        for x in range(-100, 100, 3):
            for a in range(-100, 100, 34):
                for b in range(-101, 100, 56):
                    for c in range(-105, 100, 5):
                        r = a * x*x + b*x + c
                        print(x, a, b, c, file=fin)
                        print(r, file=fout)

