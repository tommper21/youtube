import numpy as np
import matplotlib.pyplot as plt

def custom_power_iteration(A, b, n):
    for i in range(n):
        ratio = b[1] / b[0]
        print(str(b) + " Ratio of consecutive fibs: " + str(ratio) + "\n")
        b = np.dot(A, b)
    return b


#custom_power_iteration(np.array([[0, 1], [1, 1]]), np.array([1, 1]), 50)

phi = (1 + np.sqrt(5)) / 2
print("Golden Ratio: " + str(phi))

custom_power_iteration(np.array([[0, 1], [1, 1]]), np.array([1, phi]), 20)
