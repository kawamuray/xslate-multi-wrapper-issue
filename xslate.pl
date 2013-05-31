#!/usr/bin/env perl
use strict;
use warnings;

use Text::Xslate;

my $xslate = Text::Xslate->new({
    syntax    => 'TTerse',
    path      => './tmpl',
    cache_dir => './cache',
});

my @tmpls = qw/ contentA.tt contentB.tt /;
for my $tmpl (map { "./tmpl/$_" } @tmpls) {
    $tmpl =~ s{^./tmpl/}{};
    print "\@\@$tmpl\n";
    print $xslate->render($tmpl);
}
