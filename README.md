# 📱 App Logo Classifier

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-%23FF6F00.svg?style=for-the-badge&logo=TensorFlow&logoColor=white)](https://www.tensorflow.org/lite)

**App Logo Classifier** is a specialized mobile application built with Flutter that utilizes Machine Learning to identify popular social media and e-commerce logos in real-time. By leveraging a custom-trained TensorFlow Lite model, the app provides instant brand recognition directly on your smartphone.

---

## ✨ Key Features

* **Real-time Detection:** Instantly identify logos using your device's camera.
* **Edge Computing:** Runs locally on-device using TFLite for fast, offline inference.
* **High Accuracy:** Trained on a custom dataset of popular social media (Facebook, Instagram, etc.) and e-commerce (Amazon, Shopee, etc.) brands.
* **Clean UI:** Built with Flutter for a smooth, cross-platform user experience.

---

## 📸 Screenshots

| Splash Screen | Real-time Detection | Results Page |
| :---: | :---: | :---: |
| ![Splash](https://via.placeholder.com/200x400?text=Splash+Screen) | ![Detection](https://via.placeholder.com/200x400?text=Logo+Detection) | ![Result](https://via.placeholder.com/200x400?text=Brand+Info) |

---

## 🛠️ Tech Stack

* **Frontend:** [Flutter](https://flutter.dev/) (Dart)
* **ML Engine:** [TensorFlow Lite](https://www.tensorflow.org/lite)
* **Model:** Custom-trained CNN (Convolutional Neural Network)
* **Camera:** [camera](https://pub.dev/packages/camera) plugin for real-time streaming

---

## 🚀 How to Run

1.  **Clone the repository:**
    ```bash
    git clone [https://github.com/YOUR_USERNAME/app-logo-classifier.git](https://github.com/YOUR_USERNAME/app-logo-classifier.git)
    ```
2.  **Navigate to the directory:**
    ```bash
    cd app-logo-classifier
    ```
3.  **Install dependencies:**
    ```bash
    flutter pub get
    ```
4.  **Run the app:**
    ```bash
    flutter run
    ```

---

## 🧠 Model Details
The app uses a `.tflite` model located in the `assets/` folder. It was trained using a custom dataset of over 2,000 images to ensure high precision across different lighting conditions and angles.

---

## 📝 License
Distributed under the MIT License. See `LICENSE` for more information.
