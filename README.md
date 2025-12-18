# 🎯 Final Flutter Project: Gym Equipment Classifier

**Gym Equipment Classifier** is a specialized mobile application built with **Flutter** that utilizes **Machine Learning** to identify various gym machines and fitness tools in real-time. By leveraging a custom-trained **TensorFlow Lite** model, the app provides instant equipment recognition directly on your smartphone.

---

## 📖 Table of Contents
* [✨ About the Project](#-about-the-project)
* [📺 Video Demo](#-video-demo)
* [📦 Supported Equipment](#-supported-equipment)
* [🚀 Key Features](#-key-features)
* [🧠 How it Works](#-how-it-works)

---

## ✨ About the Project
"Discover gym equipment details or classify new items."

In a world where stepping into a gym can be overwhelming for beginners, this project demonstrates the power of **On-Device AI**. Unlike cloud-based vision APIs, this Flutter app processes images locally, ensuring:
* **🔒 Privacy:** Your camera feed never leaves the device.
* **⚡ Speed:** Near-instant classification for a fluid user experience.
* **📶 Offline Ready:** No internet connection required to identify equipment.

---

## 📺 Video Demo
Check out the **Gym Equipment Classifier** in action! Click the thumbnail below to watch the full demo on YouTube.

[![Gym Equipment Classifier Demo](https://img.youtube.com/vi/hblKO_olYSQ/0.jpg)](https://youtu.be/hblKO_olYSQ)

> *Watch how the app distinguishes between cardio machines and strength training gear with high accuracy.*

---

## 📦 Supported Equipment
The model is currently trained to recognize and provide details for the following categories:

* **💪 Strength & Weights:**
    * **Dumbbell:** Free weights for strength training and muscle building.
    * **Bench Press:** Equipment for upper body and chest exercises.
    * **Smith Machine:** Guided barbell system for safe weight training.
* **🏃 Cardio:**
    * **Treadmill:** Cardio equipment for running and walking exercises.
    * **Rowing Machine:** Full body cardio and strength training equipment.
    * **Stationary Bike:** Low impact cardio equipment for leg training.

---

## 🚀 Key Features
* **📸 "Classify" Floating Action:** A prominent, branded button to trigger the camera and start recognition instantly.
* **🖼️ Interactive Cards:** A clean UI featuring dedicated cards for each equipment type with high-quality icons.
* **🔍 View Details:** Each identified item allows users to "View Details" to learn more about proper usage.
* **📊 Real-time AI:** Powered by a custom TFLite model optimized for mobile hardware.

---

## 🧠 How it Works
The application uses a **Convolutional Neural Network (CNN)** optimized for mobile.

1.  **Pre-processing:** The Flutter app captures an image and resizes it to the specific dimensions required by the TFLite model.
2.  **Inference:** The model analyzes the visual features (e.g., the frame of a treadmill or the shape of a dumbbell).
3.  **Post-processing:** The app maps the result to the corresponding category name and updates the UI instantly.

---

## 🛠️ Tech Stack
* **Frontend:** Flutter (Dart)
* **ML Engine:** TensorFlow Lite
* **Architecture:** Card-based Material Design

---

## 👨‍💻 Getting Started
1. Clone the repository.
2. Run `flutter pub get`.
3. Connect your device and run `flutter run`.
