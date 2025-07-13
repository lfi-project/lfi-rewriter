#include <assert.h>

#include "args.h"
#include "util.h"

char*
riscv64_getflags(enum flags compiler)
{
    if (args.boxtype == BOX_NONE)
        return "";

    char* flags = "";
    switch (compiler) {
    case FLAGS_POSTLINK:
        return flags;
    case FLAGS_CLANG:
        return flags;
    case FLAGS_GCC:
        return xasprintf("%s -ffixed-x26 -ffixed-x27 -ffixed-x24 -ffixed-x1", flags);
    default:
        assert(0);
    }
    return flags;
}
