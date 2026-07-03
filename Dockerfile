# amd64: Google ships no linux-arm64 aapt2, so Android resource builds
# only work on amd64 (natively in CI, via emulation on Apple Silicon)
FROM --platform=linux/amd64 mobiledevops/android-sdk-image:latest

COPY . .

RUN ./gradlew clean assembleRelease
