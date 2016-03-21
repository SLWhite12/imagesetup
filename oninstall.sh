#!/bin/sh
#Dock Copy
dock()
{
    echo "---------- Copying Dock ----------"
sudo cp /Users/tech/Library/Preferences/com.apple.dock.plist '/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist'
sudo chown root '/System/Library/User Template/English.lproj/Library/Preferences/com.apple.dock.plist'
}

#Add Printers
printers()
{
echo "---------- Beginning to add printers. ----------"
#E/MS 223
lpadmin -p E_MS_223 -D "E/MS 223" -L "" -E -v smb://lcdre.wps.wps60.org/Print-Anywhere-223 -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA223.gz" -o PaperSources=PC409 -o Finisher=FS529 -o KMPunchUnit=None -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#E/MS 224
lpadmin -p E_MS_224e -D "E/MS 224e" -L "" -E -v smb://lcdre.wps.wps60.org/Print-Anywhere-223 -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA224e.gz" -o PaperSources=PC410 -o Finisher=FS533 -o KMPunchUnit=None -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#E/MS 423
lpadmin -p E_MS_423 -D "E/MS 423" -L "" -E -v smb://lcdre.wps.wps60.org/Print-Anywhere-423 -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA423.gz" -o PaperSources=PC409 -o Finisher=FS527 -o KMPunchUnit=PK517-23 -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#E/MS 454e
lpadmin -p E_MS_454e -D "E/MS 454e" -L "" -E -v smb://lcdre.wps.wps60.org/Print-Anywhere-423 -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA454e.gz" -o PaperSources=PC410 -o Finisher=FS529 -o KMPunchUnit=PK520-23 -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#E/MS 751
lpadmin -p E_MS_751 -D "E/MS 751" -L "" -E -v smb://lcdre.wps.wps60.org/Print-Anywhere-751 -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA751.gz" -o PaperSources=LU405 -o Finisher=FS524 -o KMPunchUnit=PK505-23 -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#E/MS 754
lpadmin -p E_MS_754 -D "E/MS 754" -L "" -E -v smb://lcdre.wps.wps60.org/Print-Anywhere-751 -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA754.gz" -o PaperSources=LU301 -o Finisher=FS534 -o KMPunchUnit=PK520-23 -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#WHS-B-Gold-223
lpadmin -p WHS_B_Gold_223 -D "WHS-B-Gold-223" -L "" -E -v smb://whsbdre.wps.wps60.org/Print-Anywhere-Gold -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA223.gz" -o PaperSources=PC409 -o Finisher=FS529 -o KMPunchUnit=None -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#WHS-B-Green-423
lpadmin -p WHS_B_Green_423 -D "WHS-B-Green-423" -L "" -E -v smb://whsbdre.wps.wps60.org/Print-Anywhere-Green -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA423.gz" -o PaperSources=PC409 -o Finisher=FS527 -o KMPunchUnit=PK517-23 -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#WHS-B-Purple-751
lpadmin -p WHS_B_Purple_751 -D "WHS-B-Purple-751" -L "" -E -v smb://whsbdre.wps.wps60.org/Print-Anywhere-Purple -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA751.gz" -o PaperSources=LU405 -o Finisher=FS524 -o KMPunchUnit=PK505-23 -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#WHS-W-Gold-223
lpadmin -p WHS_W_Gold_223 -D "WHS-W-Gold-223" -L "" -E -v smb://whswdre.wps.wps60.org/WPrint-Anywhere-Gold -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA223.gz" -o PaperSources=PC409 -o Finisher=FS529 -o KMPunchUnit=None -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#WHS-W-Green-423
lpadmin -p WHS_W_Green_423 -D "WHS-W-Green-423" -L "" -E -v smb://whswdre.wps.wps60.org/WPrint-Anywhere-Green -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA423.gz" -o PaperSources=PC409 -o Finisher=FS527 -o KMPunchUnit=PK517-23 -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
#WHS-W-Purple-751
lpadmin -p WHS_W_Purple_751 -D "WHS-W-Purple-751" -L "" -E -v smb://whswdre.wps.wps60.org/WPrint-Anywhere-Purple -P "/Library/Printers/PPDs/Contents/Resources/KONICAMINOLTA751.gz" -o PaperSources=LU405 -o Finisher=FS524 -o KMPunchUnit=PK505-23 -o PrinterHDD=True -o SecurePrintOnly=False -o UserType=Public -o printer-is-shared=false -o auth-info-required=negotiate
}
printers
dock