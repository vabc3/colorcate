use 5.012;
use warnings;

package Color;

use overload "-" => \&mysub;
my $C = 3; #rgb
my $EXP = 2;

sub new {
    my $class = shift;
    my $val = shift;
    return bless $val => $class
}

sub mysub{
    my ($x, $y) = @_;
    my $gap = 0;

    for (my $i=0; $i<$C; $i++){
        $gap += abs($$x[$i]-$$y[$i])**$EXP;
    }

    return $gap;
}

1