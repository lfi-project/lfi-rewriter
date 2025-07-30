# LFI Rewriter

This is the LFI external rewriter, called `lfi-rewrite`. It processes GNU
assembly (`.s`) files and produces new assembly that conforms to the LFI
sandboxing scheme. It expects a preprocessed `.s` file, like those produced by
Clang or GCC. The rewriter also expects that the assembly does not make use of
any reserved registers (`%r14`/`%r11` or `x28`/`x27`/`x26`).

This repository also holds the LFI postlinker, `lfi-postlink`. This tool is
applied to LFI binaries after linking to perform final fixups and
optimizations. The postlinker is only used on x86-64, for aligning `call`
instructions to the end of bundles and for applying the prefix padding
optimization.

The rewriter supports x86-64, Arm64, and riscv64.

# Build

```
meson setup build
cd build
ninja
```

# Hand-written Assembly

The rewriter can process hand-written assembly as long as it does not used
reserved registers. If the assembly uses advanced GNU features like macros
it should be preprocessed by Clang first:

```
clang -cc1as -filetype asm input.s -triple x86_64 | lfi-rewrite
```

# Usage

The rewriter contains many options for various experiments we have done. Most
of these options require specialized knowledge and may not be supported by the
default LFI runtime.

```
Usage: lfi-rewrite [OPTION...] INPUT
lfi-rewrite: rewrite assembly files to be compatible with LFI

  -a, --arch=ARCH            Set the target architecture (arm64,amd64)
      --allow-syscall        Do not rewrite syscalls into host calls
      --allow-tls            Do not rewrite TLS accesses into host calls
      --bundle-call          Dedicate a full bundle for calls (allows use
                             without lfi-postlink)
      --cfi=TYPE             Select CFI mechanism (bundle16,bundle32)
      --decl                 Produce code for the Deterministic Client
      --flags=TYPE           Show flags for compiler (clang,gcc)
  -h, --help                 show this message
      --large-guard          Assume large guard pages
      --meter=TYPE           Enable program metering
                             (branch,branch-resume,fp,timer)
      --no-guard-elim        Do not run redundant guard elimination
      --no-pext-elim         Do not run pext elimination
      --no-pie               Generating position-independent code is not
                             required
      --no-segue             Do not use segment register to store the sandbox
                             base
  -o, --output=FILE          Output to FILE instead of standard output
      --p2size=TYPE          Set power-of-2 sandbox size (32,variable)
      --poc                  Produce position-oblivious code (implies
                             --sys-external)
  -s, --sandbox=TYPE         Select sandbox type
                             (full,stores,bundle-jumps,syscalls,none)
      --single-thread        Specify single-threaded target
      --sys-external         Store runtime call table outside sandbox
      --use-ret              Allow return instructions for x86-64 (unsafe)
      --zero-base            Store zero in base register (used only for
                             testing)
```
