#pragma once

#include <string.h>
#include <stdbool.h>
#include <stdio.h>
#include <assert.h>

#include "args.h"

static bool
isfixed(const char* reg)
{
    if (strcmp(reg, "x26") == 0)
        return true;
    if (strcmp(reg, "x27") == 0)
        return true;
    if (args.sysexternal && strcmp(reg, "x25") == 0)
        return true;
    return false;
}

static bool
isres(const char* reg)
{
    if (strcmp(reg, "x1") == 0)
        return true;
    if (strcmp(reg, "sp") == 0)
        return true;
    if (strcmp(reg, "x2") == 0)
        return true;
    if (strcmp(reg, "ra") == 0)
        return true;
    return false;
}

static char*
bundle_align_mode()
{
    switch (args.cfi) {
    case CFI_BUNDLE4:
        return ".bundle_align_mode 2";
    case CFI_BUNDLE8:
        return ".bundle_align_mode 3";
    case CFI_HW:
        return "";
    default: 
        assert(!"unreachable");
    }
    assert(0);
}

static char*
bundle_mask_constant()
{
    switch (args.cfi) {
    case CFI_BUNDLE4:
        return "0xfffffffffffffffc";
    case CFI_BUNDLE8:
        return "0xfffffffffffffff8";
    case CFI_HW:
        // no mask (just clear top 32 bits)
        return "0xffffffff";
    default: 
        assert(!"unreachable");
    }
    assert(0);
}

static char*
bundle_align()
{
    switch (args.cfi) {
    case CFI_BUNDLE4:
        return ".p2align 2";
    case CFI_BUNDLE8:
        return ".p2align 3";
    case CFI_HW:
        return ".p2align 0";
    default: 
        assert(!"unreachable");
    }
    assert(0);
}

static char*
bundle_lock()
{
    switch (args.cfi) {
    case CFI_BUNDLE4:
        return ".bundle_lock";
    case CFI_HW:
        return "";
    default: 
        assert(!"unreachable");
    }
    assert(0);
}

static char*
bundle_unlock()
{
    switch (args.cfi) {
    case CFI_BUNDLE4:
        return ".bundle_unlock";
    case CFI_HW:
        return "";
    default: 
        assert(!"unreachable");
    }
    assert(0);
}
