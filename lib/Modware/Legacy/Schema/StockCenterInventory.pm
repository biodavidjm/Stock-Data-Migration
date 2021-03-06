package Modware::Legacy::Schema::StockCenterInventory;

use strict;
use warnings;

use base 'DBIx::Class';

__PACKAGE__->load_components("Core");
__PACKAGE__->table("stock_center_inventory");
__PACKAGE__->add_columns(
    "id",
    {   data_type     => "NUMBER",
        default_value => undef,
        is_nullable   => 0,
        size          => 126,
    },
    "location",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 300,
    },
    "obtained_as",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 150,
    },
    "storage_date",
    {   data_type     => "DATE",
        default_value => undef,
        is_nullable   => 1,
        size          => 19
    },
    "stored_from",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 150,
    },
    "stored_as",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 300,
    },
    "no_of_vials",
    {   data_type     => "NUMBER",
        default_value => undef,
        is_nullable   => 1,
        size          => 126,
    },
    "color",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 50,
    },
    "date_of_viability_test",
    {   data_type     => "DATE",
        default_value => undef,
        is_nullable   => 1,
        size          => 19
    },
    "viability_test_results",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 200,
    },
    "viability_test_performed_by",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 50,
    },
    "date_transferrrd_to_ln",
    {   data_type     => "DATE",
        default_value => undef,
        is_nullable   => 1,
        size          => 19
    },
    "date_of_strain_plating",
    {   data_type     => "DATE",
        default_value => undef,
        is_nullable   => 1,
        size          => 19
    },
    "plating_results",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 200,
    },
    "storage_comments",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 250,
    },
    "other_comments_and_feedback",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 350,
    },
    "strain_id",
    {   data_type     => "NUMBER",
        default_value => undef,
        is_nullable   => 0,
        size          => 126,
    },
    "strain_verification",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 300,
    },
    "created_by",
    {   data_type     => "VARCHAR2",
        default_value => "SUBSTR(USER,1,12) ",
        is_nullable   => 0,
        size          => 20,
    },
    "date_created",
    {   data_type     => "DATE",
        default_value => "SYSDATE ",
        is_nullable   => 0,
        size          => 19,
    },
    "stored_by",
    {   data_type     => "VARCHAR2",
        default_value => undef,
        is_nullable   => 1,
        size          => 25,
    },
    "date_modified",
    {   data_type     => "DATE",
        default_value => undef,
        is_nullable   => 1,
        size          => 19
    },
);
__PACKAGE__->set_primary_key("id");

__PACKAGE__->belongs_to(
    "strain",
    "Modware::Legacy::Schema::StockCenter",
    { id => "strain_id" },
    {   cascade_copy   => 0,
        cascade_delete => 0,
        is_deferrable  => 1,
        on_delete      => "CASCADE",
        on_update      => "CASCADE",
    },
);

# Created by DBIx::Class::Schema::Loader v0.04006 @ 2010-01-07 10:55:58
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:40pka58Xcj7mEmyJPaLbjw

# You can replace this text with custom content, and it will be preserved on regeneration
1;
