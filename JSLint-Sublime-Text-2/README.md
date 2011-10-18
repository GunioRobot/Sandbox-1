# JSLint integration for Sublime Text 2 Editor

This code snippet allows you to validate your JavaScript code 
through JSLint by a Sublime Text 2 build script.

This manual describes the set-up for an OS X system



## Requirements

* Sublime Text 2 ;)

* node.js

* npm



## Set Up

*  ```npm install jslint -g```

* store [this file](https://raw.github.com/LennyLinux/Sandbox/master/JSLint-Sublime-Text-2/JSLint.sublime-build) in "/Users/USERNAME/Library/Application Support/Sublime Text 2/Packages/JavaScript/"

* restart Sublime Text 2



## Adjust

You can easily configure JSLint by passing more parameters to the options hash;
    
    {
	    "cmd": ["jslint", "$file", "--APPEND", "--MORE","--OPTIONS", "--HERE"],
	    "selector": "*.js"
    }

    
For more options to pass run on the command-line
``` jslint```