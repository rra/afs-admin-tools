# Makefile.PL for afs-admin-tools.
#
# Written by Russ Allbery <rra@stanford.edu>
# Copyright 2011 Board of Trustees, Leland Stanford Jr. University
#
# See LICENSE for licensing terms.

use ExtUtils::MakeMaker;

WriteMakefile (
    NAME         => 'afs-admin-tools',
    ($] >= 5.005 ?
     (ABSTRACT   => 'Utilities for AFS management',
      AUTHOR     => 'Russ Allbery (rra@stanford.edu)') : ()),
    EXE_FILES    => [ qw(frak fsr loadmtpt lsmounts mtpt mvto partinfo
                         volcreate volcreate-logs volnuke) ],
    ($] >= 5.010 ?
     (LICENSE    => 'perl') : ()),
    VERSION_FROM => 'VERSION',
    dist         => { COMPRESS => 'gzip', SUFFIX => 'gz' }
);
