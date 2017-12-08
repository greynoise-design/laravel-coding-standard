# Greynoise Design - Laravel 5 Standard

Version 1.0.1

| Master | Develop |
| :---: | :---: |
| [![Build Status](https://travis-ci.org/greynoise-design/laravel-coding-standard.svg?branch=master)](https://travis-ci.org/greynoise-design/laravel-coding-standard) | [![Build Status](https://travis-ci.org/greynoise-design/laravel-coding-standard.svg?branch=develop)](https://travis-ci.org/greynoise-design/laravel-coding-standard) |
| [![Coverage Status](https://coveralls.io/repos/github/greynoise-design/laravel-coding-standard/badge.svg?branch=master)](https://coveralls.io/github/greynoise-design/laravel-coding-standard?branch=master) | [![Coverage Status](https://coveralls.io/repos/github/greynoise-design/laravel-coding-standard/badge.svg?branch=develop)](https://coveralls.io/github/greynoise-design/laravel-coding-standard?branch=develop) |


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

### Command line use

#### Sniffing errors & warnings (reporting).

Single file...

`phpcs /Path/To/MyFile.php --standard='/Path/To/laravel-coding-standard/GreynoiseLaravel/ruleset.xml'`

or if globally installed.

`phpcs /Path/To/MyFile.php --standard=GreynoiseLaravel`

Directory (recursive).

`phpcs /Path/To/MyProject --standard='/Path/To/laravel-coding-standard/GreynoiseLaravel/ruleset.xml'`

or if globally installed.

`phpcs /Path/To/MyProject --standard=GreynoiseLaravel`

#### Fixing fixable errors.

Single file.

`phpcbf /Path/To/MyFile.php --standard='/Path/To/laravel-coding-standard/GreynoiseLaravel/ruleset.xml'`

or if globally installed.

`phpcbf /Path/To/MyFile.php --standard=GreynoiseLaravel`

Directory (recursive).

`phpcbf /Path/To/MyProject --standard='/Path/To/laravel-coding-standard/GreynoiseLaravel/ruleset.xml'`

or if globally installed.

`phpcbf /Path/To/MyProject --standard=GreynoiseLaravel`

## Example editor configs

### SublimeText project config

Project > Edit Project

Set it to your preference.

```
{
    "SublimeLinter":
    {
        "linters":
        {
            "phpcs":
            {
                "@disable": false,
                "cmd": "/Path/To/php_codesniffer/bin/phpcs",
                // Or if installed globally. "cmd": "phpcs",
                "standard": "/Path/To/laravel-coding-standard/GreynoiseLaravel/ruleset.xml",
                // Exclude folders and files in the linting environment.
                // (Matches exclude-patterns in ruleser.xml).
                "excludes":
                [
                    "*/config/*",
                    "*/cache/*",
                    "*/database/*",
                    "*/docs/*",
                    "*/migrations/*",
                    "*/public/index.php",
                    "*/vendor/*",
                    "*/storage/*",
                    "*/*.blade.php",
                    "*/*.css",
                    "*/*.js",
                    "*/*.xml",
                    "*/autoload.php",
                    "*/Middleware/*",
                    "*/Console/Kernel.php",
                    "*/Exceptions/Handler.php",
                    "*/Http/Kernel.php",
                    "*/Providers/*"
                ],
            }
        }
    },
    "folders":
    [
        {
            "path": "/Path/To/MyProject"
        }
    ],
    "settings":
    {
        "phpcs":
        {
            "extensions_to_execute":
            [
                "php"
            ],
            "phpcs_executable_path": "/Path/To/php_codesniffer/bin/phpcs",
            // Or if installed globally. "phpcbf_executable_path": "phpcs",
            "phpcs_additional_args":
            {
                "--standard": "/Path/To/laravel-coding-standard/GreynoiseLaravel/ruleset.xml",
                // Optional don't show warnings
                // "-n": ""
            },
            "phpcbf_executable_path": "/Path/To/php_codesniffer/bin/phpcbf",
            // Or if installed globally. "phpcbf_executable_path": "phpcbf",
            "phpcbf_additional_args":
            {
                "--standard": "/Path/To/laravel-coding-standard/GreynoiseLaravel/ruleset.xml",
                // Optional don't fix warnings (if they're fixable)
                // "-n": ""
            },
            // Execute the sniffer on file save. (Using contextual menu instead)
            "phpcs_execute_on_save": false,
            // Show the error list after save. (Using sublime linter instead)
            "phpcs_show_errors_on_save": false,
            // Show the errors in the quick panel so you can then goto line. (Gets annoying)
            "phpcs_show_quick_panel": false,
            // Turn the debug output on/off.
            "show_debug": false
        }
    }
}
```
