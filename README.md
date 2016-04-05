# GNU Radio Dockerfile
GNU Radio with UHD via PyBOMBS Dockerfile (VNC server on top)

For any questions regarding the GNU Radio image,
check out https://github.com/stwunsch/docker-pybombs-gnuradio.

Run container
-------------

You can adjust the mapped VNC server port with altering the argument
'-p 5901:PORT' and the screen size with changing the '-geometry WIDTHxHEIGHT'
part.

You will be asked to set a password for the access via VNC.

$ docker run -it --rm -p 5901:5901 -e USER=root \
    stwunsch/docker-pybombs-gnuradio-vnc bash -c \
    "vncserver :1 -geometry 1280x800 -depth 24 && tail -F /root/.vnc/*.log"

Connect via VNC client
----------------------

I assume that you are running the container on the same machine you are
running the VNC client. Then you can connect via the ip address
'localhost:5901'. For example using vncviewer:

$ vncviewer localhost:5901

Run GNU Radio Companion
-----------------------

Simply open a terminal with the appropriate button in Start/System Tools/XTerm
and run 'gnuradio-companion' from the terminal.

Install new GNU Radio Out-of-Tree modules
-----------------------------------------

The image contains a full PyBOMBS installation. So feel free to run PyBOMBS
and install new packages. For example:

$ pybombs install gr-radar
