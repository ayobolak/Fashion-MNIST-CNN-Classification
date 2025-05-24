# Fashion-MNIST-CNN-Classification

This repository contains a Convolutional Neural Network (CNN) implementation to classify images from the [Fashion MNIST dataset](https://keras.io/api/datasets/fashion_mnist/), using both **Python** and **R** via Keras and TensorFlow.

##  Objective

To build, train, and evaluate a deep learning model with **six layers** using the Fashion MNIST dataset, and make predictions on two sample images.

---

##  Model Architecture

The CNN model contains:

1. **Input Layer** — 28x28 grayscale images  
2. **Convolution Layer 1** — Conv2D + ReLU  
3. **Pooling Layer 1** — MaxPooling2D  
4. **Convolution Layer 2** — Conv2D + ReLU  
5. **Pooling Layer 2** — MaxPooling2D  
6. **Flatten Layer**  
7. **Fully Connected Layer** — Dense + ReLU  
8. **Output Layer** — Dense with softmax activation (10 classes)

## 🗂️ Project Structure


## ⚙ Setup Instructions

### Option 1: Python Setup

1. **Create a virtual environment**:
   ```bash
   conda create -n fashion-cnn python=3.9
   conda activate fashion-cnn
   ```

2. **Install dependencies**:
   ```bash
   pip install -r requirements.txt
   ```

3. **Run training and prediction**:
   ```bash
   python fashion_cnn.py
   python fashion_predict.py
   ```

---

### Option 2: R Setup with `reticulate`

1. **Install necessary R packages**:
   ```r
   install.packages("keras")
   install.packages("reticulate")
   ```

2. **Configure Python via reticulate**:
   ```r
   library(reticulate)
   use_condaenv("r-tensorflow", required = TRUE)
   ```

3. **Install Keras and TensorFlow**:
   ```r
   library(keras)
   install_keras()
   ```

4. **Run R scripts**:
   ```r
   source("fashion_cnn.R")
   source("fashion_predict.R")
   ```
##  Output

- **Model Accuracy** and **Loss Curves**
- **Predicted Classes** for uploaded images
- Visualization of predictions.

![image](https://github.com/user-attachments/assets/3aefb55d-1ac0-402e-b48d-ce600ed943c1)

![image](https://github.com/user-attachments/assets/ed2ea8c4-673d-4c44-8a14-5e99c3eea6ab)

##  Dependencies

### Python
- `tensorflow`
- `keras`
- `numpy`
- `matplotlib`

### R
- `keras`
- `tensorflow`
- `reticulate`

---




