# 📱 Findoc Flutter Assignment

A Flutter application built as part of the Findoc Gurugram technical assignment.  
This app demonstrates **BLoC state management**, **form validation**, and **API integration** using the Flutter framework.

---

## 🖼️ Screenshots
| Login Page | Home Page |
|------------|------------|
|<img width="470" height="850" alt="image" src="https://github.com/user-attachments/assets/ea7d7704-9adf-4a72-9867-bc81c4b087a8" /> | <img width="467" height="848" alt="image" src="https://github.com/user-attachments/assets/1dc4ba9f-5a38-4053-b5fa-c65c74a91740" /> |

---

## 🚀 Features

### 1. **Login Screen**
- Email & Password input fields.
- Validation rules:
  - **Email** must match standard email format.
  - **Password** must contain:
    - Minimum 8 characters
    - At least 1 uppercase letter
    - At least 1 lowercase letter
    - At least 1 numeric digit
    - At least 1 special character
- Shows error messages for invalid inputs.
- Navigates to Home Screen on successful login.

### 2. **Home Screen**
- Fetches and displays **10 random images** from [Picsum Photos](https://picsum.photos/).
- Images are shown in a vertical list with proportional padding.
- Each list item contains:
  - **Image**: Full-width with dynamic height based on aspect ratio.
  - **Title**: Author name styled with **Montserrat Semi-Bold**.
  - **Description**: "Beautiful image from Picsum Photos" styled with Montserrat Regular, max 2 lines.

---

## 🛠 Tech Stack
- **Flutter** (Dart)
- **BLoC (flutter_bloc)** for state management
- **Google Fonts** for custom typography
- **HTTP** package for API calls

---

## 📦 Installation & Setup

1. **Clone the repository**
   ```bash
   git clone https://github.com/your-username/findoc-flutter-assignment.git
   cd findoc-flutter-assignment


