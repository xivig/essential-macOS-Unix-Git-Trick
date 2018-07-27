# website template file creation with the content

## script file for creating a list of files and folder on a single go without use of multiple command

```
#!/bin/bash
# modifing permission and make it executable
chmod +x websiteTemplate

#run the file in terminal as follows
./websiteTemplate

mkdir -p ./website/{css,js,images}
touch ./website/{404.html,index.html,robots.txt,.htaccess,humans.txt,index.php,sitemap.xml,site.manifest,README.md,.gitignore}
touch ./website/css/{normalize.css,style.css}
touch ./website/js/{custom.js,jquery.js,responsive.js}

# it will create a list og files and folders

```
# Git Command

## **`create a new repository on the command line`**


```echo "# shellScriptingMacOS" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/yisxa/shellScriptingMacOS.git
git push -u origin master

```

## **`push an existing repository from the command line`**

```
git remote add origin https://github.com/yisxa/shellScriptingMacOS.git
git push -u origin master
```
# Git - Ignore node_modules folder everywhere

I got into this situation a few times, so I made a one-liner I can paste into terminal in my project directory:


```
touch .gitignore && echo "node_modules/" >> .gitignore
```
Or, when I've added the node_modules folder to git already:

```
git rm -r --cached node_modules && touch .gitignore && echo "node_modules/" >> .gitignore
```

Then, validate that it worked:
git status

Explanation
touch will generate the .gitignore file if it doesn't already exist.

echo and >> will append node_modules/ at the end of .gitignore, causing the node_modulesfolder and all subfolders to be ignored.

git rm -r --cached removes the node_modules path from git control. The flags cause the removal to be recursive and include the cache.

You can also add others files too to ignore them to be pushed on github. Here are some more file kept in .gitignore. You can add them according to your requirement.


```
#Sample .gitignore file
# See https://help.github.com/ignore-files/ for more about ignoring files.

# dependencies
/node_modules

# testing
/coverage

# production
/build

# misc
.DS_Store
.env.local
.env.development.local
.env.test.local
.env.production.local

npm-debug.log*
yarn-debug.log*
yarn-error.log*

```
## when u get 'push fatal errorr'
```
git push -f origin branchname/master
```