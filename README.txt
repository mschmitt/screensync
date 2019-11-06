screensync
----------

A helper to send simultaneous keypresses to all subwindows in a given
GNU Screen session, similar to tmux's synchronize-panes option.

This came to be as a workaround for an environment where I had no access
to tmux or even ClusterSSH, for obscure reasons, but needed to interactively 
work on a cluster of 8 identical Linux nodes.

Needs to be run from an additional terminal outside the screen session
because creating a proper UI didn't seem to be worth the effort.

All options are passed to the screen remote control commands, most notably: 

	-S sessionid (required if more than 1 session active)

Notes on screen vs. tmux:

	If you have access to tmux, by all means use tmux. It has the 
	synchronization feature built in, has pre-defined geometry managers 
	for the subwindow layout, and you can reasonably hope that tmux
	has undergone some sort of quality control, unlike this project.

	This distribution includes a sample script for synchronizing sub-
	windows using tmux. There also is a project called tmux-cssh 
	available as a more generalized solution. 

Bugs / Limitations:
	
	- No UI. I played with using a smallish screen region at the
	  bottom of the terminal, but it totally wasn't worth the effort.
	- No geometry management. Refer to the example script and keep 
	  suffering from there.
	- Takes over the screen escape key Ctrl+A for own purposes.
	- Sometimes sluggish behaviour.
	- Arrow/special keys need to be manually toggled between standard 
	  and application mode sometimes, especially to navigate menus in
	  midnight commander.
	- Remaining control sequence sometimes leaks to the command line 
	  when using arrow keys to navigate to the end of the bash shell 
	  history. Exact conditions unclear.
	- Creator has no clue about how to handle terminal input properly,
	  hence all sorts of issues, especially when using arrow keys.

License:

	Copyright 2019, Martin Schmitt <mas at scsy dot de>

	Permission is hereby granted, free of charge, to any person obtaining
	a copy of this software and associated documentation files (the
	"Software"), to deal in the Software without restriction, including
	without limitation the rights to use, copy, modify, merge, publish,
	distribute, sublicense, and/or sell copies of the Software, and to
	permit persons to whom the Software is furnished to do so, subject to
	the following conditions:

	The above copyright notice and this permission notice shall be
	included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
	EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
	MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
	NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
	LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
	OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
	WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
