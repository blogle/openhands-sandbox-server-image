# openhands-sandbox-server-image

Minimal packaging repository that builds and publishes the upstream
[OpenHands/sandbox-server](https://github.com/OpenHands/sandbox-server)
Docker image to GHCR.

OpenHands does not publish an official `sandbox-server` OCI image. This
repository checks out an exact pinned upstream git ref, builds the unmodified
`containers/app/Dockerfile`, and publishes:

```text
ghcr.io/blogle/openhands-sandbox-server:<upstream-ref>
```

## Current pinned version

- Upstream repository: `OpenHands/sandbox-server`
- Git ref: `v1.11.0`
- Upstream commit: see the `v1.11.0` tag

## Usage

Trigger the `build` workflow manually with the desired upstream ref. The
workflow builds `linux/amd64` only (sufficient for `nandstorm`).

## Design

- No source code is forked or modified.
- The Dockerfile is built verbatim from upstream.
- Only the image name/publishing target differs from upstream.
