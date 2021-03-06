use strict;
use inc::Module::Install 0.91;
use Module::Install::AuthorTests;
use Module::Install::AuthorRequires;

name 'Log-Message-Structured';
all_from 'lib/Log/Message/Structured.pm';

requires 'Moose' => '2.0';
requires 'MooseX::Storage' => '0.26';
requires 'MooseX::Role::WithOverloading';
requires 'MooseX::Types::ISO8601' => '0.02';
requires 'MooseX::Role::Parameterized';
requires 'Moose::Autobox';
requires 'MooseX::Types';
requires 'MooseX::Types::Common';
requires 'DateTime';
requires 'Sys::Hostname';
requires 'JSON::Any';
requires 'namespace::clean';
requires 'namespace::autoclean';

test_requires 'Test::More' => '0.88';

author_requires 'Test::Pod::Coverage' => '1.04';
author_requires 'Test::Pod' => '1.14';

author_tests 't/author';

resources repository => 'git://github.com/bobtfish/log-message-structured.git';

if ($Module::Install::AUTHOR) {
    system("pod2text lib/Log/Message/Structured.pm > README")
        and die $!;
}

WriteAll;

