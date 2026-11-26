# Justine Marlon Ancheta
# INF 241 - MWA
# 2024-1003277


Laboratory 2 Discussion

For this activity I made a notification screen. First I created notification.dart in the widgets folder, which is the widget for one notification (it shows the name, the post and the description). Then I created notification_screen.dart in the screens folder, and I put the notification widget inside it. I also edited home_screen.dart so the body changes when I tap Home or Notifications in the bottom navigation bar.

For the newsfeed, I made a list of 10 posts. Each post has its own name, date, number of likes, and if it has an image or not. Some posts have no image, some have a picture, and some only show the placeholder. I used ListView.builder so I don't need to write NewsFeedCard ten times. The same goes for the notification screen, I made a list of 20 notifications and showed them using ListView.builder with a Divider.
