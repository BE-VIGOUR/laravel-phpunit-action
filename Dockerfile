FROM composer:latest

LABEL "com.github.actions.name"="Laravel PHPUnit"
LABEL "com.github.actions.description"="A GitHub action to run your Laravel project's PHPUnit test suite."
LABEL "com.github.actions.icon"="check-circle"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/BE-VIGOUR/laravel-phpunit-action"
LABEL "homepage"="https://github.com/BE-VIGOUR/laravel-phpunit-action"
LABEL "maintainer"="Benny Van Vracem <benny@vigour.be>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
