# Greynoise Design - Laravel 5 Standard

## Requirements

[PHP_CodeSniffer 3](https://github.com/squizlabs/PHP_CodeSniffer). (3.1.1 or greater).

### Global install (Recommended)

Globally [install PHP_CodeSniffer](https://github.com/squizlabs/PHP_CodeSniffer/blob/master/README.md) with one of the various methods. (Skip this step if you already have it installed.)

Once complete you should be able to execute `phpcs -i` on the command line.

You should see something like:-

`The installed coding standards are MySource, PEAR, PSR1, PSR2, Squiz and Zend.`

(Recommended) use composer...

`composer global require greynoise-design/laravel-coding-standard`

or clone this repository...

`git clone -b master --depth 1 https://github.com/greynoise-design/laravel-coding-standard.git`.

or download.

Take note of the paths where they were installed.

(Recommended) Create a symbolic link to the 'laravel-coding-standard/GreynoiseLaravel' directory in 'php_codesniffer/src/Standards/' eg. 

`ln -s ~/Documents/Projects/laravel-coding-standard/GreynoiseLaravel ~/.composer/vendor/squizlabs/php_codesniffer/src/Standards/GreynoiseLaravel`

or copy the `GreynoiseLaravel` directory to `php_codesniffer/src/Standards/`

Executing `phpcs -i` should now show GreynoiseLaravel installed eg.

`The installed coding standards are GreynoiseLaravel, MySource, PEAR, PSR1, PSR2, Squiz and Zend.`

You should now be able to set 'GreynoiseLaravel' as the phpcs standard in the plugin/editor/IDE of your choice.

### Composer install for a single project

`cd /Path/To/MyProject`  

`composer require greynoise-design/laravel-coding-standard`  

Set the 'phpcs standard path' and 'phpcbf standard path' in your editor/plugin config to:

'/Path/To/MyProject/vendor/laravel-coding-standard/GreynoiseLaravel/ruleset.xml'
