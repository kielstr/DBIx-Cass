use utf8;
package Test::Schema::Result::User;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Test::Schema::Result::User

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime");

=head1 TABLE: C<users>

=cut

__PACKAGE__->table("users");

=head1 ACCESSORS

=head2 id

  data_type: 'integer'
  is_auto_increment: 1
  is_nullable: 0

=head2 age

  data_type: 'integer'
  is_nullable: 0

=head2 firstname

  data_type: 'text'
  is_nullable: 0

=head2 lastname

  data_type: 'text'
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "id",
  { data_type => "integer", is_auto_increment => 1, is_nullable => 0 },
  "age",
  { data_type => "integer", is_nullable => 0 },
  "firstname",
  { data_type => "text", is_nullable => 0 },
  "lastname",
  { data_type => "text", is_nullable => 0 },
);

=head1 PRIMARY KEY

=over 4

=item * L</id>

=back

=cut

__PACKAGE__->set_primary_key("id");


# Created by DBIx::Class::Schema::Loader v0.07049 @ 2018-08-01 04:19:34
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:leLyrQ/Y47LzAHk4h/qdIQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
1;
