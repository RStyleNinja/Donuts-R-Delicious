# R Style Ninja ---- www.rstyle.ninja #

# Donuts R Delicious #

library(plot3D)

# 3D Plot of Half of a Torus
par(mar = c(2, 2, 2, 2))
par(mfrow = c(1, 1))
R <- 3
r <- 2
x <- seq(0, 2*pi,length.out=50)
y <- seq(0, pi,length.out=50)
M <- mesh(x, y)

alpha <- M$x
beta <- M$y

surf3D(x = (R + r*cos(alpha)) * cos(beta), y = (R + r*cos(alpha)) * sin(beta), z = r * sin(alpha), colkey=FALSE)

# clear environment of values and data
rm(list=ls())

# 3D plot of chocolate donut
x <- seq(-pi,pi,by=0.1)
y <- seq(-pi,pi,by=0.1)
R = 1.0
r = 0.5
M <- mesh(x, y)
alpha <- M$x
beta <- M$y
surf3D(x = (R + r*cos(alpha)) * cos(beta), y = (R + r*cos(alpha)) * sin(beta), z = r * sin(alpha), col="chocolate4", colkey=FALSE, alpha = .99, border="black", xlim=c(-0.5*pi,0.5*pi), ylim=c(-0.5*pi,0.5*pi), zlim=c(-0.5*pi,0.5*pi))


