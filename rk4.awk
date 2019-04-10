#!/bin/bash
# syntax: gawk -f rk4.awk
# 

## RK4 explicit runge-kutta 4th order method
function rk4(f,t,y)
{
	k1 = f
	k2 = (t + 0.0005) * sqrt(y + 0.0005 * k1)
	k3 = (t + 0.0005) * sqrt(y + 0.0005 * k2)
	k4 = (t + 0.0010) * sqrt(y + 0.0010 * k3)
      	y += 0.001 * (k1 + 2 * (k2 + k3) + k4) / 6
      	return y
}

## exact solution to f
function exact(t)
{
	return ((t^2+4)^2)/16
}


BEGIN {
    print(" t        y               error")
    print("-------- ---------------  ----------------")
    y = 1
    for (i=0; i<=10000; i++) {
      t = i / 1000
      if (t == int(t)) {
        num = exact(t)
        error = num - y
        printf("%-8d %-16.7f %g\n",t,y,error)
      }
      
      f = t*sqrt(y)
      y = rk4(f,t,y)

    }
    exit(0)
}