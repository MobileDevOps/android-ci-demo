FROM mobiledevops/android-sdk-image:latest

COPY . .

RUN ./gradlew clean assembleRelease
