Abstraction - an operating system abstraction layer provides an application programming interface to an abstract operating system making it easier and quicker to develop code for multiple software or hardware platforms
Arbitration - the operating system manages access to shared hardware resources so that multiple applications can run on the same hardware at the same time without interfering with one another

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
