#!/usr/bin/perl

use strict;
use warnings;

package GoString;
use FFI::Platypus::Record;

# Same as
# typedef struct{const char *p; go_int len;} go_str;
record_layout_1(
    'string rw' => 'p',
    'long'      => 'len',
);

# Configure to talk to the so lib
my $ffi = FFI::Platypus->new( api => 1 );
$ffi->lib( './greeting.so' );

$ffi->attach(SayGreeting => ['record(GoString)']);

# Run
my $string = 'John';
my $go_string = GoString->new(
    p => $string,
    len => length($string),
);
SayGreeting($go_string);
