# Extends the upstream sandbox-server image with permission fixes.
# The upstream image uses --chmod=770 on /app, which blocks root in
# some containerd/overlay configurations.  This layer makes /app
# accessible to root while preserving the openhands user.
ARG UPSTREAM_IMAGE
FROM ${UPSTREAM_IMAGE}

# Make /app accessible to root (group read+execute).
RUN chmod -R g+rX /app
