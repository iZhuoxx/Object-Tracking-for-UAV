#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/clover/Desktop/ego_planner/src/gazebo_ros"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/clover/Desktop/ego_planner/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/clover/Desktop/ego_planner/install/lib/python3/dist-packages:/home/clover/Desktop/ego_planner/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/clover/Desktop/ego_planner/build" \
    "/usr/bin/python3" \
    "/home/clover/Desktop/ego_planner/src/gazebo_ros/setup.py" \
     \
    build --build-base "/home/clover/Desktop/ego_planner/build/gazebo_ros" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/clover/Desktop/ego_planner/install" --install-scripts="/home/clover/Desktop/ego_planner/install/bin"
