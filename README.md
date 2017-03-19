# Get BinHQ software

This repository contains download scripts for BinHQ software.
The scripts themselves try to be as similar to each other as possible,
so that difference from a user perspective is only the name of the script.


## Development

Since the scripts are basically the same, there is no need to edit them one by one
to make a change. IF the script uses the `generic` template, it's enough to make
the changes in the template script and then run `build.sh` to build the scripts.

To add a new project to the build script, simply add the name to the
`PROJECTS` variable in `build.sh`, run the script and commit the changes.

**Note:** when you run the build script, make sure that all of the changes are
intended. If you see strange changes in `git status` rather reset them and only
keep your changes, although it's probably caused by making changes,
but not running the build script.


## License

The MIT License (MIT). Please see [License File](LICENSE) for more information.
