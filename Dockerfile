#######################################
#   KiCad
#######################################
FROM ubuntu:latest

# INSTALL KiCad
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository --yes ppa:kicad/kicad-5.1-releases && \
    apt-get update && \
    apt-get install -y --install-recommends kicad
RUN useradd -ms /bin/bash kicad-user


# START KiCad
USER kicad-user
CMD /usr/bin/kicad
