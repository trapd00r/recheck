recheck 
===========
Regular expressions checker with groups/submatches support

It works like this:

    » perl recheck.pl 
    S: foo bar baz
    P: (.)
    > f <
    [f]

    S: foo barbaz
    P: (.+)
    > foo barbaz <
    [foo barbaz]

    S: foo barbaz
    P: (.{2})+
    > foo barbaz <
    [az]

License
=======
Copyright (C) 2010 trapd00r

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License, version 2, as published by the
Free Software Foundation.
