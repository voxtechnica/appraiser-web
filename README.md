# Appraiser Service Web Application

This project ([voxtechnica/appraiser-web](https://github.com/voxtechnica/appraiser-web)) provides a front-end web application for the back-end web services API ([voxtechnica/appraiser-service](https://github.com/voxtechnica/appraiser-service)).

It also provides a demonstration of the following packages and frameworks working together:

* [Foundation for Apps](http://foundation.zurb.com/apps.html): Front-end framework for responsive web applications
* [AngularJS](https://angularjs.org/): Javascript framework for web applications
* [LibSass](http://sass-lang.com/libsass): CSS extension language
* [Gulp](http://gulpjs.com/): Streaming build system
* [Bower](http://bower.io/): Package manager
* [NodeJS](https://nodejs.org/en/): Javascript runtime

# Development Environment Setup

Once you've got NodeJS, Git, and Ruby installed on your system, you can run the following commands to set up your development environment for this application:

Install Bower and Gulp if you don't already have them:

```bash
npm install -g bower gulp
```

Build the web application in the project folder (e.g. appraiser-web):

```bash
npm install
bower install
npm start build
```

While you're working on the project, you can run the web application like this:

```bash
npm start
```

This will use Sass to compile the CSS and assemble the AngularJS app. Now open [http://localhost:8079](http://localhost:8079/#!/) in your browser to see it in action. When you change any file in the client folder, the appropriate Gulp task will run to build new files.
