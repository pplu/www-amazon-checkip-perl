#!perl
use strict;
use warnings;
use Test::More;
use Test::RequiresInternet 0.03 ( 'checkip.amazonaws.com' => 80 );
 
BEGIN { use_ok 'WWW::Amazon::checkip' }
 
ok my $ip = get_ip(), 'get_ip works';
like $ip, qr/^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$/,
    'ip address in expected format';
 
done_testing();
