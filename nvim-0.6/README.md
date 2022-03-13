## Config Notes

**Small bugs present**
---

##### Previous Pain Points
  - previous attempts to write config files, added plugins and when looking to disable the plugins, would require multiple steps in order to disable the plugin

##### Fix
  - current configs, makes plugins extremely modular. Each plugin has its own associated file that is called on the plugin init file, and passed through a loop to run the "plugin" function. 

##### Current Pain Point
  - any update to the plugin file or list requires Packer to recompile the data from the individual files.

