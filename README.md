This is a container repo that has submodules for all the other tool repos.
It also contains a utility include file for your bashrc that will pull in
and set all the proper paths and other scripts for the tools.


To use, clone it, enter and run a recursive submodule update, then put the
following two lines (at a minimum) at the end of your .bashrc:

MY_TOOLS_DIR=\<path to cloned repo folder\>

source ${MY_TOOLS_DIR}/all.incl

Also remove the "unset color_prompt force_color_prompt" from your bashrc since it needs to remain set if you want color.  If using rxvt-unicode, you'll need to add that to the list of terminals identified as color-capable
