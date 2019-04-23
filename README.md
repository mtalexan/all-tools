This is a container repo that has submodules for all the other tool repos.
It also contains a utility include file for your bashrc or zshrc that will pull in
and set all the proper paths and other scripts for the tools.
<br><br>

To use, clone it, enter and run a recursive submodule update, then put the
following two lines (at a minimum) at the end of your .bashrc or .zshrc:

```
# optional if you've installed gtags somewhere strange.
# leave off if it's installed in the PATH somewhere
export GTAGS_INSTALL_DIR=\<path to gtags install folder that contains a bin subfolder\>

# optional if you want self-written emacs daemon support
export EMACS_DAEMON=true

# required
export MY_TOOLS_DIR=\<path to cloned repo folder\>
source ${MY_TOOLS_DIR}/all.incl
```

Also remove the "unset color_prompt force_color_prompt" from your bashrc since it needs to remain set if you want color.<br>
If using rxvt-unicode, you'll need to add that to the list of terminals identified as color-capable
