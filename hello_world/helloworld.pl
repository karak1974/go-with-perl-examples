
#!/usr/bin/perl

use strict;
use warnings;

# Load FFI module
use FFI::Platypus;

# Configure to talk to the so lib
my $ffi = FFI::Platypus->new( api => 1 );
$ffi->lib( './helloworld.so' );

# Bind "HelloWolrd" to the "HelloWolrd" function
$ffi->attach(HelloWorld => []);

# Run
HelloWorld();
 
