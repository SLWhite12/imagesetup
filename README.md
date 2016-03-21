ImageSetup
======

This is a compilation of my own scripts and others that is intended for use in our AD environment to assist in setup of new user accounts.

Requirements
------------
+ Mac OS X 10.10+

Usage
-----

This is the repository used to make a pkg file which is then run within the "Technician" account. If you do not want to copy the dock from the Technician account, feel free to comment out that part of the postinstall.

Credits
-------

ImageSetup uses Outset by [Joseph Chilcote](https://github.com/chilcote/outset) which incorporates [FoundationPlist](https://github.com/munki/munki/blob/master/code/client/munkilib/FoundationPlist.py), a library to work with binary plists written by Greg Neagle as part of his [Munki](https://github.com/munki) project.
The package files are intended to be compiled with Luggage by [Joe Block](https://github.com/unixorn/luggage)

License
-------

	Copyright 2016 Steven White
	
	Licensed under the Apache License, Version 2.0 (the "License");
	you may not use this file except in compliance with the License.
	You may obtain a copy of the License at
	
		http://www.apache.org/licenses/LICENSE-2.0
	
	Unless required by applicable law or agreed to in writing, software
	distributed under the License is distributed on an "AS IS" BASIS,
	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
	See the License for the specific language governing permissions and
	limitations under the License.
