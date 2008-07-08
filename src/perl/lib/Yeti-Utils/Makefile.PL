use inc::Module::Install;

name     'Yeti-Utils';
all_from 'lib/Yeti/Utils.pm';
author   'Pedro Figueiredo <me@pedrofigueiredo.org>';

build_requires 'Test::More';

auto_install;

WriteAll;

