x <- 0
xend = 1
y = 0
yend = 0

ar_height = 0.2
ar_width = 0.1

library(bezier)

p <- matrix(c())


bezier()

t <- seq(0, 1, length=100)

apex <- c(0,ar_height)
leftpoint <- c(-ar_width / 2, 0)
rightpoint <- c(ar_width / 2, 0)
centroid <- (apex + leftpoint + rightpoint) / 3
low_centroid <- (1.75 * apex + 2 * leftpoint + 2 * rightpoint) / 5.75
left_centroid <- (1 * apex + 4 * low_centroid + 1 * leftpoint) / 6
right_centroid <- (1 * apex + 4 * low_centroid + 1 * rightpoint) / 6
par(pin = c(ar_width, ar_height) * 10, ann = F, axes = F)

plot(rbind(leftpoint, apex, rightpoint), axes = F, type = "n")
polygon(rbind(bezier(t = t, p = rbind(leftpoint, left_centroid, apex)),
  bezier(t = t, p = rbind(apex, right_centroid, rightpoint)),
  bezier(t = t, p = rbind(rightpoint, low_centroid, leftpoint))), col = "black", border = NA)
