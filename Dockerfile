FROM quay.io/bitriseio/android-ndk:latest

RUN mkdir $ANDROID_HOME/extras/blackberry
COPY ./bb_dynamics.zip $ANDROID_HOME/extras/blackberry/bb_dynamics.zip
RUN (cd $ANDROID_HOME/extras/blackberry ; unzip bb_dynamics.zip)
RUN rm $ANDROID_HOME/extras/blackberry/bb_dynamics.zip