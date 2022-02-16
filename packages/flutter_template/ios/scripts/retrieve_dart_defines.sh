#!/bin/sh
echo $DART_DEFINES | tr ',' '\n' | while read -r line; do
  echo $line | base64 -d | tr ',' '\n' | xargs -I@ bash -c "echo @ | grep 'FLAVOR' | sed 's/.*=//'"
done | (
  read -r flavor
  if [ "$flavor" = "" ]; then
    # SRCROOT = ./flutter_template/ios
    echo "#include \"dev.xcconfig\"\n//FLAVORは反映されていない" >$SRCROOT/Flutter/DartDefine.xcconfig
    echo "" | tee $SRCROOT/log.txt # デバック用
  else
    echo "#include \"$flavor.xcconfig\"" >$SRCROOT/Flutter/DartDefine.xcconfig
    echo $flavor | tee $SRCROOT/log.txt # デバック用
    # \cp -f $SRCROOT/$flavor/GoogleService-Info.plist $SRCROOT/Runner/GoogleService-Info.plist
  fi
)
