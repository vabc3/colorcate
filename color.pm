use 5.012;
use warnings;

package Color;

use overload "-" = \&mysub;


sub mysub{
    say "s;";
}