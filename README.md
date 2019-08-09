# Example project for BoB robotics
The idea behind this repository is that it can act as a template for projects using [BoB robotics](https://github.com/BrainsOnBoard/bob_robotics). It contains an example program and ``CMakeLists.txt`` file and also includes BoB robotics as a [git submodule][1]. Using a submodule allows for specifying a specific version of BoB robotics which is known to work with the program, in case upstream changes break anything. If you would like to override this behaviour, set ``export USE_LOCAL_BOB_ROBOTICS=1`` and then CMake will use the BoB robotics repository pointed to by ``$BOB_ROBOTICS_PATH`` instead.

For information about using the BoB robotics build system, visit [the documentation](https://brainsonboard.github.io/bob_robotics/md_cmake_README.html).

To get started, click the "Use this template" button on this repository's GitHub page in order to create a new fork.

[1]: https://git-scm.com/book/en/v2/Git-Tools-Submodules
