# website template file creation with the content

## script file for creating a list of files and folder on a single go without use of multiple command


`#!/bin/bash
# modifing permission and make it executable
chmod +x websiteTemplate

#run the file in terminal as follows
./websiteTemplate

mkdir -p ./website/{css,js,images}
touch ./website/{404.html,index.html,robots.txt,.htaccess,humans.txt,index.php,sitemap.xml,site.manifest,README.md,.gitignore}
touch ./website/css/{normalize.css,style.css}
touch ./website/js/{custom.js,jquery.js,responsive.js}

# it will create a list og files and folders
`
