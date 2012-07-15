# ABSTRACT: Corolocal for Syntax::Feature
package Syntax::Feature::Corolocal;
use common::sense;
use Coro::Localize ();

sub install {
    my $class = shift;
    my %args = @_;
    Coro::Localize->import_into( $args{'into'} );
}

1;

=head1 SYNOPSIS

    use syntax qw( corolocal );
    
    async {    
        corolocal $/ = \2_048;
        while (<STDIN>) {
            # ...
        }
    }

=head1 DESCRIPTION

This allows you to load L<Coro::Localize> using L<Syntax::Feature>. 
L<Syntax::Feature> provides a single point of entry for loading various
syntax extensions.

=head1 SEE ALSO

Syntax::Feature

