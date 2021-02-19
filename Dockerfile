FROM quay.io/bitriseio/android-ndk:latest

ENV BB_DYNAMICS_VERSION 9_0_0_72

RUN mkdir $ANDROID_HOME/extras/blackberry
RUN curl -X GET "https://www.blackberry.com/content/dam/blackberry-com/downloads/sdk/android/BlackBerry_Dynamics_for_Android_r${BB_DYNAMICS_VERSION}.zip" -o $ANDROID_HOME/extras/blackberry/bb_dynamics.zip
RUN (cd $ANDROID_HOME/extras/blackberry ; unzip bb_dynamics.zip)
RUN rm $ANDROID_HOME/extras/blackberry/bb_dynamics.zip