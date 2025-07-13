#include <assert.h>

#include "args.h"
#include "util.h"

char*
riscv64_getflags(enum flags compiler)
{
    if (args.boxtype == BOX_NONE)
        return "";
    char* flags = "";
    
    flags = xasprintf("%s -ffixed-x26 -ffixed-x27 -ffixed-x24 -ffixed-x1", flags);
    
    return flags;
}
