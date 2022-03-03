+++
title = "Devlog"
author = ["Matthew Rothlisberger"]
draft = false
+++

## 2022-03-02 {#2022-03-02}

I laid out the general interface architecture. Each "chunk" in a
structure has its own editing context, or set of permissible
operations on the artifact the chunk represents. A STARK terminal
provides human and network interfaces. The human interface allows the
individual using the program to dispatch operations, while the network
interface receives and dispatches operations from other terminals. The
human interface includes input device mappings and graphical elements
as needed, which ease access to permitted operations. Nevertheless,
every operation may be accessed by name from a command line or within
a script if desired.

I also assessed a range of options for the internal layout of
structures, which are the rich arrangements of chunks (such as all the
design information for an engineering project) that individuals using
the system create. My favored design is a flat, unstructured
collection of individual chunks (small units, like a single 3D
part). Chunks can reference other chunks by linking to them, including
them, or depending on them. They never contain one another,
though. Some chunks represent an overview of a group of other chunks;
this is one way to provide structure. Each chunk has a type, which
dictates edit operations and view options.

-- `asterane`


## 2022-03-01 {#2022-03-01}

I sketched out a "multiplayer" STARK system, wherein multiple
individuals use terminals to contribute to a single structure,
optionally with a unifying server. This informs structure
representation design, especially version control. I expect that CRDTs
(conflict-free replicated data types) will play a significant role to
enable collaboration on structures. Contributions from many
individuals may be automatically merged, regardless of their relative
creation times. STARK's design formats will track a rich web of
version history from multiple contributors.

My next important task was to design the specific data formats that
will support many-dimensional structures comprising various element
types. To establish context, I set out to define some words that I
have always used to describe structures in STARK. Two essential words
are "chunk", a single unit of information in a particular format (like
a string of text), and "view", one of many ways of looking at
structured information. A core aspect of the STARK design is the
capability to view artifacts, and combinations thereof, in many
distinct ways to aid thought.

-- `asterane`
