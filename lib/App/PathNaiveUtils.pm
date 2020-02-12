package App::PathNaiveUtils;

# AUTHORITY
# DATE
# DIST
# VERSION

use 5.010001;
use strict;
use warnings;

use Path::Naive;

our %SPEC;

$SPEC{abs_path} = {
    v => 1.1,
    args_as => 'array',
    args => {
        path     => { schema=>['pathname::unix*'], req=>1, pos=>0 },
        basepath => { schema=>['pathname::unix*'], req=>1, pos=>1 },
    },
    result_naked => 1,
};
sub abs_path {
    Path::Naive::abs_path(@_);
}

$SPEC{concat_path} = {
    v => 1.1,
    args_as => 'array',
    args => {
        paths => { schema=>['array*', of=>'pathname::unix*'], req=>1, pos=>0, slurpy=>1 },
    },
    result_naked => 1,
};
sub concat_path {
    Path::Naive::concat_path(@_);
}

$SPEC{concat_and_normalize_path} = {
    v => 1.1,
    args_as => 'array',
    args => {
        paths => { schema=>['array*', of=>'pathname::unix*'], req=>1, pos=>0, slurpy=>1 },
    },
    result_naked => 1,
};
sub concat_and_normalize_path {
    Path::Naive::concat_and_normalize_path(@_);
}

$SPEC{normalize_path} = {
    v => 1.1,
    args_as => 'array',
    args => {
        path => { schema=>['pathname::unix*'], req=>1, pos=>0 },
    },
    result_naked => 1,
};
sub normalize_path {
    Path::Naive::normalize_path(@_);
}

$SPEC{split_path} = {
    v => 1.1,
    args_as => 'array',
    args => {
        path => { schema=>['pathname::unix*'], req=>1, pos=>0 },
    },
    result_naked => 1,
};
sub split_path {
    Path::Naive::concat_and_normalize_path(@_);
}

1;
#ABSTRACT: Utilities related to Path::Naive

=head1 DESCRIPTION

This distributions provides the following command-line utilities:

# INSERT_EXECS_LIST


=head1 SEE ALSO

=cut
