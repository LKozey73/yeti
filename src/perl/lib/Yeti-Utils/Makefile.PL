use inc::Module::Install;

name     'Yeti-Utils';
all_from 'lib/Yeti/Utils.pm';
author   'Pedro Figueiredo <me@pedrofigueiredo.org>';

build_requires 'Test::More';

requires       'Imager'                 => '0.65';
requires       'Image::ExifTool'        => '7.30';
requires       'Class::Accessor'        => '0.31';
requires       'Carp'                   => '1.04';
requires       'Log::Log4perl'          => '1.16';
requires       'Log::Dispatch'          => '2.21';
requires       'Template'               => '2.19';
requires       'URI'                    => '1.37';
requires       'LWP::UserAgent'         => '5.813';
#requires       'HTTP::Request'          => '5.811';
requires       'HTTP::Cookies'          => '5.810';
requires       'File::Find::Rule::Type' => '0.05';
requires       'File::Find::Rule::Age'  => '0.2';
requires       'DateTime'               => '0.4302';
requires       'Config::Any'            => '0.12';

auto_install;

WriteAll;

