As a first I created private repo with master branch. On the next steps were created 3 branches:
1. develop - created index.html;
2. images - added 2 images and added them in index.html;
3. style - added style1.css and also added in index.html;
After all these steps branches images and style were merged with develop branch, testet and merged with master branch.
In result I have file - index.html with style and two images (github and devops logos).

```
<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Some Images</title>
  <link rel="stylesheet" href="styles/style1.css">
</head>
 <body>
  <h1>Images : </h1>
  <h1>1. GitHub Image: </h1>
  <p><img src="images/github_images.png" alt="GitHub"></p>
  <h1>2. DevOps Image: </h1>
  <p><img src="images/devops_images.png" alt="DevOps"></p>
</body>
</html>
```
