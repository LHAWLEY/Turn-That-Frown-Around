Overview

We're going to make a site where users can upload videos of animals, comment on them, and vote on them.

Outline
14. Make submitting a comment work without incurring a page refresh. (AJAX the comment to the server, update the DOM to display the newly added comment, clear the comment form of text)
20. Each video on the index is sorted by number of upvotes.
21. BONUS CHALLENGE: upvoting a video causes the page to resort without refreshing.
24. If I posted the video and I'm logged in, on the index page I will see a link to edit my video.
25. Clicking the edit link will take me to an edit form where I can update the name and description, but not the url.
26. Submitting the form will update the video and redirect me back to the index page.
27. Style it! Make it beautiful.
29. A user who enters a wrong user name or a wrong password on login, sees an error.  Display on page.
30. A user who enters a wrong user name or a wrong password on registration, sees an error.  Display on page.

Data Models

I have intentionally not given you information about tables/models. Read through each requirement and think about how you would build it, and take notes on what model/table/column is required.

When you've done that, use that as a reference, but only make a model or a table as you need them, i.e. don't build the comment table or model until you get to that requirement. Unless you feel it really makes sense to do so otherwise. This way, we can keep things very simple, and add onto them as we go along.

If you really feel comfortable making the models and tables first, you can, but be cautious of building more than you need to.

Done
1. The index page for the site, /, will redirect to the videos index.
3. Add a link, that will appear on every page, to take the user to the registration page. (new user form)
4. A user who submits the new user form with their email and password, is created in the system, and redirected to the login page. (new session)
5. A user can enter their email and password to login, they are redirected to the videos index.
6. Add a link on the videos index page for users that are not logged in, to get to the login page.
7. Edit the link to the registration page, so that only people who are not logged in will see it.
8. A logged in user will see a link to upload a video on the videos index page.
9. Clicking that link will take them to a form where they can enter: a link to a video on youtube, a title, a short description
11. If you are logged in, below each video on the index is a form to add a comment.
13. For each video on the index, below the video, list all the comments.
2. The videos index lists all the videos with the most recently posted at the top. A video will use the following code: <iframe src="<%= video.url %>" frameborder="0"></iframe>
12. Submitting the comment will create a new comment and redirect you to the video index.
10. Submitting that form will create a video, and they'll redirect to the videos index. When storing the video url, replace all the characters before the video id with the embed url. For example: https://youtu.be/U_4XWcDSR8w -> https://www.youtube.com/embed/U_4XWcDSR8w
28. A user who registers is not redirected to the login page, instead they are logged in on creation.
15. A logged in user will see an upvote button (no downvote) near each video.
16. Clicking the upvote button will AJAX to the server and increase the total upvote count.
17. When I refresh the video index, I can see which videos I've upvoted.  May require css.
18. When I click the upvote arrow again for a video I've already upvoted, it removes my upvote via AJAX.
19. Each video on the index displays the total number of upvotes.
22. If a video has more than three comments, hide all comments but the last three.
23. Add a link to see the hidden comments, clicking should not cause a full page refresh.