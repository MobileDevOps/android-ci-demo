# Android CI demo

Demo for an Android app CI/CD pipeline.

## Toolchain

- Android Gradle Plugin 9.2.1 (built-in Kotlin support)
- Gradle 9.6.1
- compileSdk 37, targetSdk / minSdk 36 (Android 16)
- Build image: [mobiledevops/android-sdk-image](https://hub.docker.com/r/mobiledevops/android-sdk-image) (JDK 21, platform android-36, build-tools 36.1.0)

## CI

- GitLab CI/CD: [.gitlab-ci.yml](.gitlab-ci.yml) (Pipelines: https://gitlab.com/mobiledevops/android-ci-demo/pipelines)
  - Runs `./gradlew clean assembleRelease --stacktrace` on `mobiledevops/android-sdk-image:latest`

## Local verification with Docker

Build the app inside the CI base image:

```sh
docker build --pull -t android-ci-demo .
```

## Planned Features

- [ ] Unit / ui testing
- [ ] Different app configuration (bundle id)
- [ ] Signing the app with different key stores
- [ ] Crash reporting integration
- [ ] Analytics integration
- [ ] Upload to Google Play Store
