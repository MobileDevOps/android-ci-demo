FROM mobiledevops/android-sdk-image:latest

COPY . .

USER mobiledevops

RUN ./gradlew clean assembleRelease --stacktrace