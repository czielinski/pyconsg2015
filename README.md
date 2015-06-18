## Concurrent Computations on Multicore Processors

Slides from the talk _Concurrent Computations on Multicore Processors_ given at PyCon SG 2015 on June 18, 2015 in Singapore (see also https://pycon.sg/schedule/presentation/54/).

### Description
In this talk we will discuss the _multiprocessing_ module, which allows parallel programming on multicore processors. We will do a quick comparison with the _threading_ module, cover the core API and finally discuss common pitfalls.

### Abstract
When trying to improve the performance of a Python application on a multicore machine by means of concurrency, one typically employs either the _threading_ or the _multiprocessing_ module. While the former is used to spawn threads, the latter one allows the creation of subprocesses. Although threads are useful for e.g. I/O-bound problems, their usage is limited due to CPython's Global Interpreter Lock (GIL). On the other hand, the _multiprocessing_ module can spawn subprocesses with their own interpreter instances, hence circumventing the GIL and enabling true parallel computations on multicore architectures.

In many cases, the _multiprocessing_ package allows to gain a significant speed-up by parallelization of computationally intensive code sections. We will cover the most important functionality of this module such as parallel mapping, asynchronous function evaluations, shared memory maps and interprocess communication. In particular, a parallel map can be often used as a drop-in alternative for a sequential mapping. We will go through some examples and discuss common pitfalls.

_Licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (https://creativecommons.org/licenses/by-nc-sa/4.0/)_
