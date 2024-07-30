# NPX Cache Control

[![Latest version](https://img.shields.io/npm/v/npx-cache-control)
 ![Dependency status](https://img.shields.io/librariesio/release/npm/npx-cache-control)
](https://www.npmjs.com/package/npx-cache-control)

Lists and purges packages cached when running `npx`.

## Installation

This package is usually installed globally, so that you can use the `npx-cache-control` executable or the short alias `npxcc`  from any directory:

```sh
$ npm i -g npx-cache-control
```

Make sure, that you use [Node.js] version 18 or newer.

## Usage

    Usage: npxcc [options] <command> [parameters]

    Commands:
      ls|list                       lists packages stored in the npx cache
      purge|rm|remove|un|uninstall  removes packages from the npx cache
    	clear                         removes empty directories in the npx cache

    Parameters:
      uninstall [names]  names of packages to remove (* means all)

    Options:
      -d|--dry-run  only print what would be done instead of doing it
      -f|--force    do not report an error if a package is mising
      -v|--verbose  print extra information about the packages and the cache
      -V|--version  print the version of the executable and exits
      -h|--help     print the usage information and exits

    Examples:
      $ npxcc ls
      $ npxcc un npx-cache-control

## Contributing

In lieu of a formal styleguide, take care to maintain the existing coding style.  Add unit tests for any new or changed functionality. Lint and test your code using Grunt.

## License

Copyright (c) 2023-2024 Ferdinand Prantl

Licensed under the MIT license.

[Node.js]: http://nodejs.org/
