
#!/usr/bin/perl

use strict;
use warnings;

# Load FFI module
use FFI::Platypus;

# Configure to talk to the so lib
my $ffi = FFI::Platypus->new( api => 1 );
$ffi->lib( './parameter.so' );

# Bind "HelloWolrd" to the "HelloWolrd" function
$ffi->attach(HelloWorld => ['long']);

# Run
HelloWorld(3);
 
