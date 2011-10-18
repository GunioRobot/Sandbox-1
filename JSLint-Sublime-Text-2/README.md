# JSLint integration for Sublime Text 2 Editor (OS X)

This code snippet allows you to validate your JavaScript code 
through JSLint by a Sublime Text 2 build script.



-------------



### Requirements

* Sublime Text 2 ;)
* node.js
* npm



-------------



### Set Up

*  ```npm install jslint -g```
* Store [this file](https://raw.github.com/LennyLinux/Sandbox/master/JSLint-Sublime-Text-2/JSLint.sublime-build) in ```/Users/USERNAME/Library/Application Support/Sublime Text 2/Packages/JavaScript/```
* Restart Sublime Text 2



-------------



### Run

* Open Sublime 2
* Select ```Tool -> Build System -> jsLint```
* Open a JavaScript source code file
* And run the build with ```CMD + B```



-------------


### Adjust

You can easily configure JSLint by passing more parameters to the options hash;
    
    {
	    "cmd": ["jslint", "$file", "--APPEND", "--MORE","--OPTIONS", "--HERE"],
	    "selector": "*.js"
    }

    
For more options to pass run on the command-line

``` jslint```