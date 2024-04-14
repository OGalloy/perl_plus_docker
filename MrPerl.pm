#docker
package MrPerl;

use strict;
use warnings;

sub getAll { #get all containers
    my $out = qx(docker ps -a);
    return $out;
}
sub startByName {
    my $name = shift; #name of container
    my $out = qx(docker start $name);
    chomp $out;
    return $out;
}

sub stopByName {
    my $name = shift; #name of container
    my $out = qx(docker stop $name);
    chomp $out;
    return $out;
}

sub inspect {
    my $name = shift; #name of container
    my $param = shift; #param
    my $out = qx(docker inspect --format {{.$param}} $name);
    return $out
}

1;