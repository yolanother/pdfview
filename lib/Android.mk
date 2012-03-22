#
# Copyright (C) 2011 Jack Palevich
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# This makefile shows how to build a shared library and an activity that
# bundles the shared library and calls it using JNI.

LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

src_files := $(call all-java-files-under,src) \
             $(call all-java-files-under,overlay)

LOCAL_MODULE := pdfview
LOCAL_MODULE_TAGS := optional
LOCAL_JAVA_LIBRARIES := core
LOCAL_REQUIRED_MODULES := pdfview2
LOCAL_SRC_FILES := $(src_files)


#LOCAL_SRC_FILES := $(call all-java-files-under, src/cx/hell/android/lib) \
#                   overlay/src/cx/hell/android/pdfview/Actions.java \
#                   overlay/src/cx/hell/android/pdfview/Options.java
#LOCAL_SRC_FILES := src/cx/hell/android/lib/pagesview/OnImageRenderedListener.java \
                   src/cx/hell/android/lib/pagesview/RenderingException.java \
                   src/cx/hell/android/lib/pagesview/N2EpdController.java \
                   src/cx/hell/android/lib/pagesview/Tile.java \
                   src/cx/hell/android/lib/pagesview/FindResult.java \
                   src/cx/hell/android/lib/pagesview/PagesProvider.java \
                   src/cx/hell/android/lib/view/TreeView.java \
                   src/cx/hell/android/lib/pdf/PDF.java \
                   overlay/src/cx/hell/android/pdfview/Actions.java \
                   overlay/src/cx/hell/android/pdfview/Options.java

#LOCAL_PACKAGE_NAME := pdfview

#LOCAL_MODULE_TAGS := optional

#LOCAL_REQUIRED_MODULES := pdfview2

include $(BUILD_JAVA_LIBRARY)

# ============================================================

# Also build all of the sub-targets under this one: the shared library.
include $(call all-makefiles-under,$(LOCAL_PATH))
