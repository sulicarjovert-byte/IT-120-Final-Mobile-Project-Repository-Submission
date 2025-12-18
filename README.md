# 🏋️ Gym Equipment Classifier

**Gym Equipment Classifier** is a modern, Flutter-based mobile application designed to help fitness enthusiasts identify gym gear instantly. "Discover gym equipment details or classify new items" using a custom-trained machine learning model powered by **TensorFlow Lite**.

---

## 📖 Table of Contents
* [✨ About the Project](#-about-the-project)
* [📺 Video Demo](#-video-demo)
* [📦 Equipment Classes](#-equipment-classes)
* [🚀 Key Features](#-key-features)
* [🧠 How it Works](#-how-it-works)
* [🛠️ Tech Stack](#-tech-stack)

---

## ✨ About the Project
This project bridges the gap between fitness and AI. By processing images locally on the device, the app provides a seamless experience for beginners who may be unfamiliar with specific gym machines.

* **🔒 Privacy-First:** All classifications happen on-device.
* **⚡ Real-Time Results:** No waiting for cloud processing.
* **🎨 Modern UI:** A clean, card-based interface with a vibrant purple theme.

---

## 📺 Video Demo
See the **Gym Equipment Classifier** in action! Click the image below to watch the full demonstration on YouTube, showing real-time classification and the app's smooth UI transitions.

[![Gym Equipment Classifier Demo](https://img.youtube.com/vi/YOUR_VIDEO_ID/0.jpg)](https://www.youtube.com/watch?v=YOUR_VIDEO_ID)

> *Click the image above to watch how the app identifies different equipment categories with high accuracy.*

---

## 📦 Equipment Classes
The app is currently optimized to recognize and provide details for the following gear:

* **💪 Strength:** Dumbbell, Bench Press, Smith Machine.
* **🏃 Cardio:** Treadmill, Rowing Machine, Stationary Bike.

Each card in the UI includes a **"View Details"** option to help users understand the equipment's purpose and target muscle groups.

---

## 🚀 Key Features
* **📸 Floating "Classify" Action:** A prominent, easy-to-reach purple camera button to start recognition instantly.
* **🗂️ Categorized Grid View:** Equipment is organized into interactive cards for easy browsing.
* **🔍 Instant Identification:** Uses the smartphone camera to detect gym gear in real-time.
* **🖼️ Gallery Picker:** Option to import photos from your device for classification.

---

## 🧠 How it Works
The application utilizes a **Convolutional Neural Network (CNN)** specifically trained on gym-related imagery.

1.  **Image Input:** Users trigger the camera via the purple **"Classify"** button.
2.  **TFLite Inference:** The app passes the image through a `.tflite` model optimized for mobile.
3.  **Result Mapping:** The model outputs a probability score, mapping the visual patterns (like a treadmill's belt or a dumbbell's shape) to the correct label.

---

## 🛠️ Tech Stack
* **Framework:** [Flutter](https://flutter.dev/)
* **Language:** Dart
* **Machine Learning:** TensorFlow Lite (TFLite)
* **Design:** Material 3 Card-based UI

---

## 👨‍💻 Installation
1. Clone the repo: `git clone https://github.com/YOUR_USERNAME/gym-equipment-classifier.git`
2. Install packages: `flutter pub get`
3. Run the app: `flutter run`
