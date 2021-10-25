# questionare_challenge

Description: the following project consist of an iterface that interacts with a database to show random questions and for each right answer a point is given, and its a 5 step questionare

Build with:

* Vanilla JavaScript
* Node.JS
* Expressjs
* Sequelize
* MySQL

Author: Nicolás Ochoa

## For usage
The instructions are divided in 4 sections and are meant for beginners, so if you have experience you might skip some steps.

### Section 1 - Making sure you have whats needed
The following steps can be done in any order but you have to make sure you do them all :
* Download XAMPP - https://www.apachefriends.org/es/download.html 
* Download this repsitory, make to have all files saved on one directory
* If you don't have it yet install Node.js - https://nodejs.org/es/
* Normally npm comes with Node.js but make sure you have it, you can run the following snippet on the terminal to check 
`npm -v`.

### Section 2 - Setting up Database
1. Open XAMPP and on the tab "Manage Servers" make sure MySQLDatabase's status says "Running", if says "Stopped"
 , just select it and click on Start on the right and wait for it to be running.
2. Then go back to the Welcome tab and click on "Go to Application".
3. A browser window will open up and you have to click on the "phpMyAdmin" option on the top right corner that will open phpMyAdmin dashboard.
4. Now you can create the database, to do so you can either click on "New" on the left column or click on the "data bases" tab in the top. 
IMPORTANT: make sure the name you use for the data base is    **challenge**
5. After creating the data base you can start creating the tables, for this step you have to go to the folder/directory called "sql" from the repository files where you will find the **challenge.sql** file.
In this file you will find all the SQL instructions to create the tables and relate the foreign keys.


### Section 3 - Initializing server
6. Now on a terminal either from VS Code or native one from your pc, go to the folder/directory were files were cloned or downloaded  and install the dependencies with  `npm i` or 
 `npm install` command.
7. Then initiate the server with  ` node server.js ` . 

### Section 4 - Testing 

8. Open the **index.html** file on your browser and try answering the questions.
