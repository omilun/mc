FROM minio/mc
RUN \
  # Create the folders if they don't exist
  mkdir -p     .mc && \
  chgrp -R 0   .mc && \
  chmod -R g=u .mc

# Runs image as a non-root user in every environment, so that it runs consistently on SnappCloud and your development environment.
USER 0
