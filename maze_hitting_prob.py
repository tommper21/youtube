import numpy as np
import matplotlib.pyplot as plt

probs1 = []
probs2 = []
for n in range(2,50):
    a = np.zeros((2*n,2*n))
    # first two rooms
    a[0,0:3]=np.array([1,-0.5,-0.5])
    a[1,0:4]=np.array([-0.5,1,0,-0.5])
    # room three up to room 2n-2
    for i in range(1,n-1):
        a[2*i,2*i-2:2*i+3]=np.array([-1/3,0,1,-1/3,-1/3])
        a[2*i+1,2*i-1:2*i+4]=np.array([-1/3,-1/3,1,0,-1/3])
    # last two rooms
    for i in range(2*n-2,2*n):
        a[i,i]=1
    b = np.zeros((2*n,))
    b[2*n-1]=1
    x = np.linalg.solve(a,b)
    probs1.append(x[0])
    probs2.append(x[1])
print(probs1)
plt.plot([i for i in range(2,50)],probs1,label="h1")
plt.plot([i for i in range(2,50)],probs2,label="h2")
plt.legend()
plt.show()
