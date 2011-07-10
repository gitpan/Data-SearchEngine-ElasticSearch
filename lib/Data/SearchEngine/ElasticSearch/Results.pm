package Data::SearchEngine::ElasticSearch::Results;
BEGIN {
  $Data::SearchEngine::ElasticSearch::Results::VERSION = '0.01';
}
use Moose;

extends 'Data::SearchEngine::Results';

with (
    'Data::SearchEngine::Results::Faceted',
);

no Moose;
__PACKAGE__->meta->make_immutable;
1;
__END__
=pod

=head1 NAME

Data::SearchEngine::ElasticSearch::Results

=head1 VERSION

version 0.01

=head1 AUTHOR

Cory G Watson <gphat@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Cold Hard Code, LLC.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

