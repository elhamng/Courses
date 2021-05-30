goog <- c(200,205,201,202)
msft <- c(300,301,299,302)

stocks <- c(goog,msft)

stocks.matrix <- matrix(stocks,byrow = T, nrow = 2)

days <- c('mon','tue','wed','thu')
st.names <- c('goog', 'msft')

colnames(stocks.matrix) <- days
rownames(stocks.matrix) <- st.names


print(stocks.matrix)
