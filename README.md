# static-log10-header
A header for computing the integer log10 with the C preprocessor

## Usage
```
#define X 123
#include "static_log10.h"
_Static_assert(X == 2, "")
#undef X
```
