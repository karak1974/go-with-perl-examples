#!/usr/bin/perl

use strict;
use warnings;

# Load FFI module
use FFI::Platypus;

# Configure to talk to the so lib
my $ffi = FFI::Platypus->new( api => 1 );
$ffi->lib( './return_value.so' );

# Bind "ReturnInt" to the "ReturnInt" function
$ffi->attach(ReturnInt => [] => 'int');

# Use
printf("Returned int %d\n", ReturnInt());
