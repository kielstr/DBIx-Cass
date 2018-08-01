#!/usr/bin/env perl

use 5.20.1;
use strict;
use warnings;
use Data::Dumper 'Dumper';

use FindBin '$RealBin';
use lib $RealBin . '/../lib';

#dbicdump -o dump_directory=./lib -o components="[q{InflateColumn::DateTime}]" -o preserve_case=1 Test::Schema 'dbi:mysql:database=dbixclass:host=mysql;port=3306' kiel password

use Test::Schema;

my $schema = Test::Schema->connect(
    'dbi:mysql:database=dbixclass:host=mysql;port=3306', 
    'kiel',
    'password',
);

my $user_rs = $schema->resultset('User');

my @all_users = $user_rs->all;

for my $user ( @all_users ) {
    say join ':', $user->id, $user->firstname, $user->lastname, $user->age;
}


my $sarah_rs = $user_rs->search( { firstname => 'Sarah'} );

for my $a_sarah ( $sarah_rs->next ) {
    say 'A Sarah -- ' . join ':', $a_sarah->id, $a_sarah->firstname, $a_sarah->lastname, $a_sarah->age;
}


#print Dumper $sarah_rs;

my $new_user = $user_rs->new({});

$new_user->firstname('Kiel');
$new_user->lastname('Stirling');
$new_user->age(40);
$new_user->insert;



