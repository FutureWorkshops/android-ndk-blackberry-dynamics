FROM quay.io/bitriseio/android-ndk:latest

ENV BB_DYNAMICS_VERSION 9_0_0_72

RUN mkdir $ANDROID_HOME/extras/blackberry
RUN mkdir $ANDROID_HOME/extras/blackberry/dynamics_sdk
RUN curl -X GET "https://www.blackberry.com/content/dam/blackberry-com/downloads/sdk/android/BlackBerry_Dynamics_for_Android_r${BB_DYNAMICS_VERSION}.zip" -o $ANDROID_HOME/extras/blackberry/dynamics_sdk/dynamics_sdk.zip
RUN (cd $ANDROID_HOME/extras/blackberry/dynamics_sdk ; unzip dynamics_sdk.zip)
RUN rm $ANDROID_HOME/extras/blackberry/dynamics_sdk/dynamics_sdk.zip