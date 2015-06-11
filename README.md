## Concurrent Computations on Multicore Processors

Slides from the talk _Concurrent Computations on Multicore Processors_ given at PyCon SG 2015 on June 18, 2015 in Singapore (see also https://pycon.sg/schedule/presentation/54/).

### Description
In this talk we will discuss the _multiprocessing_ module, which allows parallel programming on multicore processors. We will do a comparison with the _threading_ module, then cover the core functionality and finally discuss applications and limitations.

### Abstract
When trying to improve the performance of a Python application on a multicore machine by means of parallelization, one typically employs either the _threading_ or the _multiprocessing_ module. While the former is used to spawn threads, the latter one allows the creation of subprocesses. Although threads are useful for e.g. I/O-bound problems, they do not allow for true parallelism due to CPython's Global Interpreter Lock (GIL). In contrast, the _multiprocessing_ module can spawn subprocesses with their own interpreter instances, hence circumventing the GIL and allowing the usage of more than one core at the same time.

In many cases, the _multiprocessing_ package allows to gain a significant speed-up by parallelization of computationally intensive code sections. We will cover most of the functionality of this module such as parallel mapping, asynchronous function evaluations and interprocess communication using pipes and queues. In particular, a parallel map can be often used as a drop-in alternative for a sequential mapping. We will go through some examples and discuss typical applications and pitfalls.

_Licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (https://creativecommons.org/licenses/by-nc-sa/4.0/)_
