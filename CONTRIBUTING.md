# Greynoise Design - Laravel 5 Standard

## Contributing

### PHPUnit Testing

`cd /Path/To/laravel-coding-standard`

 Install dependencies (PHP_Codesniffer).

`composer install`

Verify PHP_Codesniffer works.

`./vendor/squizlabs/php_codesniffer/bin/phpcs -i`

Set installed standard to GreynoiseLaravel.

`./vendor/squizlabs/php_codesniffer/bin/phpcs --config-set installed_paths /Path/To/laravel-coding-standard/GreynoiseLaravel`

Verify the GreynoiseLaravel standard is installed.

`./vendor/squizlabs/php_codesniffer/bin/phpcs -i`

Change directory to 'php_codesniffer'.

`cd ./vendor/squizlabs/php_codesniffer/`

Install PHP_Codesniffer dependencies (PHPUnit).

`composer install`

Run unit tests.

`./vendor/bin/phpunit --debug --filter GreynoiseLaravel ./tests/AllTests.php`

phpcs -p -s ~/Documents/Projects/laravel-coding-standard/GreynoiseLaravel/Tests/Arrays/ArrayDeclarationUnitTest.inc --standard=GreynoiseLaravel --sniffs=GreynoiseLaravel.Arrays.ArrayDeclaration

-

### Creating Unit tests

Assuming the standard is in `~/Documents/Projects/`.

#### Get the errors
`phpcs -p -s ~/Documents/Projects/laravel-coding-standard/GreynoiseLaravel/Tests/Arrays/ArrayDeclarationUnitTest.inc --standard=GreynoiseLaravel --sniffs=GreynoiseLaravel.Arrays.ArrayDeclaration`

Look at the error line numbers and add them to the ArrayDeclarationUnitTest.php file. (Ensure cli tabWith is set if needed eg. in ArrayDeclarationUnitTest->setCliValues).

#### Generate the fixed version

`phpcbf -v -p -s ~/Documents/Projects/laravel-coding-standard/GreynoiseLaravel/Tests/Arrays/ArrayDeclarationUnitTest.inc --standard=GreynoiseLaravel --sniffs=GreynoiseLaravel.Arrays.ArrayDeclaration --suffix=.fixed`

(This may contain spaces and tabs which get fixed elsewhere).

#### Run unit tests
`./vendor/bin/phpunit --debug --filter GreynoiseLaravel ./tests/AllTests.php`
