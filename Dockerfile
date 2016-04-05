# Derive from Ubuntu with GNU Radio and UHD via PyBOMBS
FROM stwunsch/docker-pybombs-gnuradio

# Update apt-get
RUN apt-get update

# Install LXDE and VNC server
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y lxde-core lxterminal tightvncserver

# Expose ports.
EXPOSE 5901
