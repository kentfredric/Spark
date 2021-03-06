use strict;
use warnings;

package Spark::Wheel::RadioGroup::Renderer::HTML;

use Moose;
with 'Spark::Renderer';
use namespace::autoclean;

sub render {
    my ($self, $node, $data) = @_;
    require HTML::Tiny;
    my $ht = HTML::Tiny->new;
    return $ht->button({name => $node->name});
}

__PACKAGE__->meta->make_immutable;

1;

