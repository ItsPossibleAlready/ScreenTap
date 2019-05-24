# ScreenTap

## Building, Testing, and Installation

You'll need the following dependencies:
* meson >= 0.43
* valac

Run `meson` to configure the build environment and then `ninja` to build and run automated tests

    meson build --prefix=/usr
    cd build
    ninja
