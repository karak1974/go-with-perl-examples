#!/usr/bin/perl

use strict;

# Load FFI module
use FFI::Platypus;
use FFI::Go::String;

# Configure to talk to the so lib
my $ffi = FFI::Platypus->new( api => 1, lang => 'Go' );
$ffi->lib( './return_value.so' );

# Bind functions
$ffi->attach(ReturnInt => [] => 'goint' );
$ffi->attach(SumInts => ['goint', 'goint'] => 'goint' );
$ffi->attach(ReturnString => [] => 'gostring' );

# Use
printf("Returned int %d\n", ReturnInt());
printf("Sum of 2 and 3 is %d\n", SumInts(2, 3));
printf("Returned string %s\n", ReturnString());
