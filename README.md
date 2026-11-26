# Justine Marlon Ancheta
# INF 241 - MWA
# 2024-1003277

Laboratory 0: During this activity, I learned how to set up Flutter and create my first application using Visual Studio Code. At first, I experienced some difficulties with creating the project, choosing the correct settings, and selecting a device to my program. I also learned that Flutter needs the proper SDK and dependencies to work correctly. To solve these problems, I explored the tools in Visual Studio Code and learned how to use Flutter commands such as flutter doctor to check errors and flutter pub get to install the needed dependencies. After following the steps, I was able to understand how to run my simple Flutter application.

Laboratory 1: I learned how to create a social media newsfeed using Flutter. I had some difficulties displaying images, arranging the layouts, and uploading my updated files to GitHub, especially when fixing the file paths in pubspec.yaml and managing Git branches. Through this activity, I learned how to fix these problems and gained more experience in using Flutter, organizing widgets, and managing my project.

Laboratory 2 Discussion: For this activity i made a notification screen. tapos I created notification.dart in the widgets folder, which is the widget for one notification it shows the name, the post and the description). Then I created notification_screen.dart in the screens folder, and I put the notification widget inside it. I also edited home_screen.dart so the body changes when I tap Home or Notifications in the bottom navigation bar.

For the newsfeed naman, I made a list of 10 posts. Each post has its own name, date, number of likes, and if it has an image or not. Some posts have no image, some have a picture, and some only show the placeholder. I used ListView.builder so I don't need to write NewsFeedCard ten times. The same goes for the notification screen, I made a list of 20 notifications and showed them using ListView.builder with a Divider.
