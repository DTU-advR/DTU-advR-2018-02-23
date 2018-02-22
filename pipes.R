library(magrittr)

x <- 1L:10

mean(x)

# let's pipe

x ->.; mean(.)

# there are many types of pipes

library(magrittr)
x %>% mean

library(pipeR)
x %>>% mean

library(microbenchmark)

microbenchmark(mean(x),
               x %>% mean,
               x %>>% mean,
               times = 1e3)

# but does it really matter?
x <- 1L:10e6

microbenchmark(mean(x),
               x %>% mean,
               x %>>% mean,
               times = 1e3)


1:10 %>% f(.)


# pipe versatility

x <- 1L:10
x %>% mean
x %>% mean()
x %>% mean(.)

# pipe and operators
x - 1 %>% mean
x - 1 %>% mean(.)
(x - 1) %>% mean
x %>% (. - 1) %>% mean
x %>% {. - 1} %>% mean
x %>% mean(. - 1)
x  %>%  mean((. - 1))


