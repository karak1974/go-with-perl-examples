#!/usr/bin/perl

use strict;

# Load FFI module
use FFI::Platypus;
use FFI::Go::String;

# Configure to talk to the so lib
my $ffi = FFI::Platypus->new( api => 1, lang => 'Go' );
$ffi->lib( './greeting.so' );

$ffi->attach(SayGreeting => ['gostring']);

# Run
SayGreeting("John Doe");
