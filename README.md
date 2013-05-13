************************************
TikZ Library for Structural Analysis
************************************

:Date: 12 May 2013
:Authors: Jürgen Hackl
:Contact: hackl.j@gmx.at
:Web site: https://github.com/hackl/TikZ-StructuralAnalysis/
:Documentation: http://www.latex-community.org/know-how/472-tikz-structural-analysis
:Copyright: This document has been placed in the public domain.
:License: PyRe is released under the GNU General Public Licence.
:Version: 2.0


Purpose
=======

At university it is always a very time consuming work to create new
assignments, and tests; especially when those tasks include drawing graphics.


In the field of structural engineering those small structures are a key part
for teaching. For this reason I developed, in cooperation with the Institute
for Structural Analysis at the Graz University of Technology, a TikZ library
for Structural Analysis.


There are two different types of libraries available: one for 2D structures
(``structuralanalysis.sty``) and one for 3D structures
(``3dstructuralanalysis.sty``). In the following article only the 2D library
will be discussed, but the principles and methods are the same for 3D
structures.



Principles
==========

TikZ is a very powerful tool; however, unfortunately not everyone is used to this part of LaTeX. Therefore, in addition to the creation of the library the second goal was to keep the usage as simple as possible. So that:

* anyone can use this library without (deeper) knowledge in TikZ
* skilled users can easily modify and customise the code
* the principle of this library can be used for any other library


Getting Started
===============

Installation
------------

Clone this (or a forked version of this) repository. ::

    $ cd ~
    $ git clone Clone https://github.com/hackl/TikZ-StructuralAnalysis.git

Put the .sty file in the right directory and add it to the LaTeX file like: ::

    \usepackage{structuralanalysis}

LaTeX Environment
-----------------

Like every TikZ graph, needs also this library the ::

     \begin{tikzpicture}
       ...
     \end{tikzpicture}

environment. 


Elements
========

Basic Commands
--------------

The library provides 10 different commands:

* ``\point``
* ``\beam``
* ``\support``
* ``\hinge``
* ``\load`` or ``\lineload`` and ``\temperature``
* ``\internalforces``
* ``\dimensioning``
* ``\influenceline``
* ``\notation``
* ``\addon``

For each element (command) are different options available. Obligatory options
are marked with {curley brackets} and optional values are marked with [square
brackets]. The first type is a must have criteria. In contrast, the optional
input is not required to be entered.

An easy example is the following single force: ::

   \load{type}{insertion point}[rotation][length or included angle][loaddistance];


Manual
------

More specific information about the elements and their options can be found in
the manual. The manual is written in German, but section 1 provides a table
with all elements and options; furthermore, the code is also given for each
picture in the manual.


Examples
========

The easiest way to create a structure is the list above, starting with ``\point``
and ending with ``\addon``.


The following examples shall give a first impression how drawings can be
generated. In the manual both examples are explained in detail.

2D Simplified Roof
------------------

.. image:: http://www.latex-community.org/articles/2d-roof.png


3D Support Construction
-----------------------

By using the library ``3dstructuralanalysis``, the following graph can be created
in a very short time:

.. image:: http://www.latex-community.org/articles/3d-support-construction.png