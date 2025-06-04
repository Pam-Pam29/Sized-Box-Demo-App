SizedBox Widget Demo
A Flutter app demonstrating the SizedBox widget through an interactive calculator layout that shows how SizedBox creates consistent spacing between UI elements.
How to Run

Clone this repository:
bgit clone https://github.com/Pam-Pam29/Sized-Box-Demo-App.git

Navigate to the project directory:
cd Sized-Box-Demo-App

Get dependencies:
flutter pub get

Run the app:
flutter run
SizedBox Widget Attributes
This demo focuses on three key SizedBox constructor properties:
1. width (double?)
Default: null (takes available space)
Purpose: Sets a fixed width constraint for the widget
Use Case: Creating consistent spacing between calculator buttons or making elements uniform width

2. height (double?)

Default: null (takes available space)
Purpose: Sets a fixed height constraint for the widget
Use Case: Adding vertical spacing between form sections or creating uniform button heights

3. child (Widget?)

Default: null (creates invisible spacing box)
Purpose: The widget to display inside the SizedBox constraints
Use Case: When null, creates pure spacing; when provided, constrains the child widget to specific dimensions

Demo Screenshot
..\images\Screenshot 2025-06-04 174908.png

