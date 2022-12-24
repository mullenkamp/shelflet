#!/bin/bash
# echo $STDLIB_DIR
# echo $RECIPE_DIR
if [[ $PY_VER == "3.8"* ]]; then
  cp $RECIPE_DIR/_gdbm.cpython-38-x86_64-linux-gnu.so $STDLIB_DIR/lib-dynload/
elif [[ $PY_VER == "3.9"* ]]; then
  cp $RECIPE_DIR/_gdbm.cpython-39-x86_64-linux-gnu.so $STDLIB_DIR/lib-dynload/
elif [[ $PY_VER == "3.10"* ]]; then
  cp $RECIPE_DIR/_gdbm.cpython-310-x86_64-linux-gnu.so $STDLIB_DIR/lib-dynload/
elif [[ $PY_VER == "3.11"* ]]; then
  cp $RECIPE_DIR/_gdbm.cpython-311-x86_64-linux-gnu.so $STDLIB_DIR/lib-dynload/
fi

$PYTHON -m pip install --no-deps --ignore-installed .
