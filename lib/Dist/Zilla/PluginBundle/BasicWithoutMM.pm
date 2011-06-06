package Dist::Zilla::PluginBundle::BasicWithoutMM;
BEGIN {
  $Dist::Zilla::PluginBundle::BasicWithoutMM::VERSION = '0.001';
}
use Moose;
with 'Dist::Zilla::Role::PluginBundle::Easy';

sub configure {
  my ($self) = @_;

  $self->add_plugins(qw(
    GatherDir
    PruneCruft
    ManifestSkip
    MetaYAML
    License
    Readme
    ExtraTests
    ExecDir
    ShareDir

    Manifest

    TestRelease
    ConfirmRelease
    UploadToCPAN
  ));
}

__PACKAGE__->meta->make_immutable;
no Moose;

1;

# ABSTRACT: Basic plugins to maintain and release CPAN dists, without a module builder



=pod

=head1 NAME

Dist::Zilla::PluginBundle::BasicWithoutMM - Basic plugins to maintain and release CPAN dists, without a module builder

=head1 VERSION

version 0.001

=head1 DESCRIPTION

This plugin is meant to be a basic "first step" bundle for using Dist::Zilla.
It requires a building module such as [MakeMaker], [ModuleBuild] or
[ModuleBuildTiny] to work correctly.

It includes the following plugins with their default configuration:

=over 4

=item *

L<Dist::Zilla::Plugin::GatherDir>

=item *

L<Dist::Zilla::Plugin::PruneCruft>

=item *

L<Dist::Zilla::Plugin::ManifestSkip>

=item *

L<Dist::Zilla::Plugin::MetaYAML>

=item *

L<Dist::Zilla::Plugin::License>

=item *

L<Dist::Zilla::Plugin::Readme>

=item *

L<Dist::Zilla::Plugin::ExtraTests>

=item *

L<Dist::Zilla::Plugin::ExecDir>

=item *

L<Dist::Zilla::Plugin::ShareDir>

=item *

L<Dist::Zilla::Plugin::Manifest>

=item *

L<Dist::Zilla::Plugin::TestRelease>

=item *

L<Dist::Zilla::Plugin::ConfirmRelease>

=item *

L<Dist::Zilla::Plugin::UploadToCPAN>

=back

=head1 AUTHOR

Leon Timmermans <leont@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Leon Timmermans.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

