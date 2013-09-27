#!/usr/bin/env perl

use strict;
use warnings;

my $secret = int(1 + rand 100);


while (1) {
	print "Please enter a guess from 1 to 100: ";
	chomp(my $guess = <STDIN>);
	if ($guess =~ /quit|exit|\A\s*\z/i) {
		print "Sorry you gave up. The number was $secret.\n";
		last;
	} elsif ($guess < $secret) {
		print "Too small. Try again!\n";
		redo;
	} elsif ($guess == $secret) {
		print "That was it!\n";
		last;
	} else {
		print "Too large. Try again!\n";
		redo;
	}
}
