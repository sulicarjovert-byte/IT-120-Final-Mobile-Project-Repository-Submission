# 🎯 Final Flutter Project: Gym Equipment Classifier

**Gym Equipment Classifier** is a specialized mobile application built with **Flutter** that utilizes Machine Learning to identify various gym machines and fitness tools in real-time. By leveraging a custom-trained **TensorFlow Lite** model, the app provides instant equipment recognition directly on your smartphone, helping beginners and athletes identify gear at the gym.

---

## 📖 Table of Contents
* [✨ About the Project](#-about-the-project)
* [📦 Supported Equipment](#-supported-equipment)
* [🚀 Key Features](#-key-features)
* [📺 Video Demo](#-video-demo)
* [🧠 How it Works](#-how-it-works)

---

## ✨ About the Project
In a busy fitness environment, this project demonstrates the power of **On-Device AI**. Unlike cloud-based vision APIs, this Flutter app processes images locally. This ensures:

* **🔒 Privacy:** Your gym photos and videos never leave the device.
* **⚡ Speed:** Near-instant classification, allowing you to identify equipment while walking through the gym.
* **📶 Accessibility:** Works perfectly in basement gyms or areas with poor cellular reception.

---

## 📦 Supported Equipment
The model is currently trained to recognize common gym essentials across several categories:

* **🏃 Cardio:** Treadmill, Stationary Bike, Elliptical, Rowing Machine.
* **🏋️ Strength & Machines:** Leg Press, Lat Pulldown, Chest Press, Cable Machine.
* **🔔 Free Weights/Basics:** Dumbbell, Barbell, Kettlebell, Weight Bench.

---

## 🚀 Key Features
* **📸 Live Camera Feed:** Point your camera at a machine to identify what it is instantly.
* **🖼️ Gallery Picker:** Import photos from your workout logs to run the classifier.
* **📊 Confidence Scoring:** Displays the percentage of certainty (e.g., "98% Bench Press").
* **🎨 Clean UI:** A minimalist, "Dark Mode" friendly interface designed for a gym environment.

---

## 📺 Video Demo
Check out the Gym Equipment Classifier in action! See how the app accurately distinguishes between different machines and weights.

> **[Insert Link to Your Video or GIF Here]**

---

## 🧠 How it Works
The application uses a **Convolutional Neural Network (CNN)** optimized for mobile performance.

1.  **Pre-processing:** The Flutter app captures a frame and resizes it to the input dimensions required by the TFLite model.
2.  **Inference:** The `tflite` interpreter runs the image data against the trained weights to find patterns (like the shape of a dumbbell or the structure of a treadmill).
3.  **Post-processing:** The app maps the highest probability index to the equipment name and displays the result on the UI.

---

## 🛠️ Tech Stack
* **Frontend:** Flutter (Dart)
* **Machine Learning:** TensorFlow Lite
* **Model:** Custom CNN 

---

## 👨‍💻 Getting Started
1. Clone this repository.
2. Run `flutter pub get`.
3. Connect your Android or iOS device.
4. Run `flutter run`.
