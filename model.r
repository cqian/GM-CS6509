library(rstan)

setwd(getwd())

rstan_options(auto_write = TRUE)
options(mc.cores = parallel::detectCores())

data <- read_rdump('output/seq.r')
fit <- stan(file="model.stan", data = data, iter = 50, chains = 1)

# fit1 <- stan(fit=fit, data = CTMdata, iter = 50, chains = 1, algorithm = "NUTS")
# fit1 <- stan(fit=fit, data = CTMdata, iter = 1000, chains = 4)

print(fit)
plot(fit)


la <- extract(fit, permuted = TRUE) 
a <- extract(fit, permuted = FALSE) 

plot(fit, pars = c("theta"))
theta <- extract(fit, 'theta')
theta <- unlist(theta, use.names=FALSE)
plot(density(theta),
     xlab=expression(theta), col=grey(0, 0.8),
     main="Parameter distribution")

plot(fit, pars=c("phi")) 
phi <- extract(fit, 'phi')
phi <- unlist(phi, use.names=FALSE)
plot(density(phi),
     xlab=expression(phi), col=grey(0, 0.8),
     main="Parameter distribution")

# plot(fit, pars = c("eta"))
# eta <- extract(fit, 'eta')
# eta <- unlist(eta, use.names=FALSE)
# plot(density(eta),
#      xlab=expression(eta), col=grey(0, 0.8),
#      main="Parameter distribution")
