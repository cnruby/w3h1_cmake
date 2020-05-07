#!/bin/sh
SOURCE_DIR=/usr/local/opt/gettext
DESTN_DIR=/usr/local
ln -s $SOURCE_DIR/include/libintl.h $DESTN_DIR/include/libintl.h
ln -s $SOURCE_DIR/lib/libintl.dylib $DESTN_DIR/lib/libintl.dylib
ln -s $SOURCE_DIR/lib/libintl.a $DESTN_DIR/lib/libintl.a
#