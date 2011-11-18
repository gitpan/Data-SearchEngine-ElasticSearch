
use strict;
use warnings;



use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "ElasticSearch support for Data::SearchEngine",
  "AUTHOR" => "Cory G Watson <gphat\@cpan.org>",
  "BUILD_REQUIRES" => {
    "Test::More" => 0
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30"
  },
  "DISTNAME" => "Data-SearchEngine-ElasticSearch",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Data::SearchEngine::ElasticSearch",
  "PREREQ_PM" => {
    "Clone" => 0,
    "Data::SearchEngine" => "0.26",
    "Data::SearchEngine::Item" => 0,
    "Data::SearchEngine::Paginator" => 0,
    "Data::SearchEngine::Results" => 0,
    "ElasticSearch" => 0,
    "Moose" => 0,
    "Try::Tiny" => 0
  },
  "VERSION" => "0.08",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



