library(keras)

fashion <- dataset_fashion_mnist()
c(c(x_train, y_train), c(x_test, y_test)) %<-% fashion

x_train <- x_train / 255
x_test <- x_test / 255

x_train <- array_reshape(x_train, c(nrow(x_train), 28, 28, 1))
x_test <- array_reshape(x_test, c(nrow(x_test), 28, 28, 1))

model <- keras_model_sequential() %>%
  layer_conv_2d(filters = 32, kernel_size = c(3,3), activation = 'relu', input_shape = c(28,28,1)) %>%
  layer_max_pooling_2d(pool_size = c(2,2)) %>%
  layer_conv_2d(filters = 64, kernel_size = c(3,3), activation = 'relu') %>%
  layer_max_pooling_2d(pool_size = c(2,2)) %>%
  layer_flatten() %>%
  layer_dense(64, activation = 'relu') %>%
  layer_dense(10, activation = 'softmax')

model %>% compile(
  loss = 'sparse_categorical_crossentropy',
  optimizer = optimizer_adam(),
  metrics = 'accuracy'
)

model %>% fit(x_train, y_train, epochs = 10, validation_data = list(x_test, y_test))

