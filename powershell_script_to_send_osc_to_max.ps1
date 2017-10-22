add-type -path 'C:\Users\mp\SharpOSC\Binaries\Latest\v0.1.1.0\Release\SharpOSC.dll'
#Connection for Resolume
$sender = new-object SharpOSC.UDPSender "192.168.0.114", 7000
#start a layer clip
$message = new-object SharpOSC.OscMessage "/layer3/clip1/connect", 1;
$sender.Send($message);
#Enable or dissable a video effect on a clip. 1 = disable, 0 = enabled
$message = new-object SharpOSC.OscMessage "/activeclip/video/effect1/bypassed", 1;
$sender.Send($message);

