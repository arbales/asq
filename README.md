ASQ
======

The Alamo Square Groupe



Getting Started
---------------

You'll need a \*nix environment. Following are instructions for OS X 10.7:


### Prerequisites

Install [Xcode](http://developer.apple.com/tools/xcode/) and
[OS X GCC packages](https://github.com/kennethreitz/osx-gcc-installer).

Use [Homebrew](http://mxcl.github.com/homebrew/) to install
[Node.js](http://nodejs.org/), [Redis](http://redis.io/),
[rbenv](https://github.com/sstephenson/rbenv), and
[ruby-build](https://github.com/sstephenson/ruby-build).

```sh
$ brew install node redis rbenv ruby-build
```


### Build Ruby

Set up [rbenv](https://github.com/sstephenson/rbenv) for your shell:

```sh
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
```

**Reload your shell.**

Build and install Ruby 1.9.3:

```sh
$ rbenv install 1.9.3-p0   # Install MRI 1.9.3-p0
$ cd /path/to/asq
$ rbenv local 1.9.3-p0
```

Add [Bundler](http://gembundler.com) for dependency management:

```sh
$ gem install bundler
$ rbenv rehash             # Rebuild the rbenv shim binaries
```


### Preparing the project

Install dependencies:

```sh
$ cd /path/to/asq
$ bundle install --binstubs    # Ruby dependencies
```

### Running the application

```sh
$ ./bin/unicorn
```

Now browse to <http://localhost:8080/> and get going.

### Contributing

```sh
$ cd /path/to/asq
$ git checkout -tb awesome-thing
$ # Do stuff
$ git add <files>
$ git commit -m Added files
$ git push origin master
```

#### Deploying it to Heroku
```sh
$ cd /path/to/asq
$ git push heroku master
$ # success in the cloud
```