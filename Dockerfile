FROM archlinux/base:latest

LABEL "com.github.actions.name"="Archlinux CMake builder"
LABEL "com.github.actions.description"="Build cmake project"
LABEL "com.github.actions.icon"="aperture"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/codehz/arch-cmake-builder"
LABEL "homepage"="https://github.com/codehz/arch-cmake-builder"

RUN pacman -Syu --needed --noconfirm base-devel cmake make gcc clang musl git meson ninja

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
