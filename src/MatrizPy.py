import numpy as np
import time as t
x = np.random.rand(1000,1000)
y = np.random.rand(1000,1000)
start = t.time()
z = np.dot(x, y)
print("Time np = ",t.time()-start)
 
import random
import time as t
l = 0
h= 1000
cols = 1000
rows= 1000
 
choices = list (map(float, range(l,h)))
x = [random.choices (choices , k=cols) for _ in range(rows)]
y = [random.choices (choices , k=cols) for _ in range(rows)]
 
result = [([0]*cols) for i in range (rows)]
 
start = t.time()
 
for i in range(len(x)):
    for j in range(len(y[0])):
        for k in range(len(result)):
                result[i][j] += x[i][k] * y[k][j]
end_t = t.time()



print("Time = ", end_t-start)