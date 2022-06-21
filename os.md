# Operating system
* It's the software that runs in kernel mode which is not always true. Part of the problem is that operating system perform two essentially unrelated functions: providing application programmers (and application programs, naturally) a clean set of resources instead of the messy hardware ones and managing these hardware resources. One of the major tasks of the operating system is to hide the hardware and present programs (and their programmers) with nice, clean, elegant, consistent, abstractions to work with instead. Operating systems turn the ugly into the beautiful. `*__*`
* An operating system is intimately tied to the hardware of the computer it runs on. It extends the computer's instruction set and manages its resources. To work, it must know a great deal about the hardware, at least about how the hardware appears to the programmer.

## History of the operating systems
* The first generation (1945-55): Vacuum Tubes
* The second generation (1955-65): Transistors and Batch Systems
* The third generation (1965-80): ICs and Multiprogramming
* The fourth generation (1980-Present): Personal Computers
* The fifth generation  (1990-Present): Mobile Computers

## Computer Hardware Review
* **Processors(CPUs)** - the "brain" of the computer.
> It fetches instruction from memory and executes them. The basic cycle of every CPU is to fetch the first instruction from memory, decode it to determine its type and operands, execute it, and then fetch, decode, and execute subsequent instructions.
Each CPU has a specific set of instructions that it can execute. Thus an x86 processor cannot execute ARM programs and an ARM processor cannot execute x86 programs. Because accessing memory to get an instruction or data word takes much longer than executing an instruction, all CPUs contain some registers inside to hold key variables and temporary result. Thus the instruction set generally contains instructions to load a word from memory into a register, and store a word from a register into memory. Other instructions combine two operands from registers, memory, or both into a result, such as adding two words and storing the result in a register or in memory

**Abstraction** - an operating system abstraction layer provides an application programming interface to an abstract operating system making it easier and quicker to develop code for multiple software or hardware platforms
**Arbitration** - the operating system manages access to shared hardware resources so that multiple applications can run on the same hardware at the same time without interfering with one another

Stack:
    userspace:
        applications
        libraries and utilities
    kernel:
        operating system
    hardware

Communicatins with hardware
    Operating system implements a common mechanism for allowing applications to access hardware (abstraction)
    Applications can make requests from the operating system via system calls
    Operating system can alert applications via signals, it may also terminate applications

pre-emptive multitasking:
    1. CPU receives interrupt
    2. interrupt stores program counter
    3. interrupt invokes handler
    4. handler saves rest of state of the CPU for the process
    5. handler does its business
    6. handler invokes the scheduler
    7. scheduler selects a process to run
    8. scheduler restores state of the CPU for that process
    9. scheduler jumps execution to that process

Permission:
    d - it is possible to change into that directory using cd(1). This also means that it is possible to access the files within that directory, subject to the permissions on the files themselves.
