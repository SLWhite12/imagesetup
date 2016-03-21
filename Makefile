USE_PKGBUILD=1
include /usr/local/share/luggage/luggage.make
PACKAGE_VERSION=0.1.1
TITLE=imagesetup
REVERSE_DOMAIN=com.github.imagesetup
PAYLOAD= \
		pack-Library-LaunchDaemons-com.github.outset.boot.plist \
		pack-Library-LaunchDaemons-com.github.outset.cleanup.plist \
		pack-Library-LaunchAgents-com.github.outset.login.plist \
		pack-Library-LaunchAgents-com.github.outset.on-demand.plist \
		pack-usr-local-outset-outset \
		pack-usr-local-outset-FoundationPlist \
		pack-usr-local-outset-share-com.chilcote.outset.plist \
		pack-usr-local-outset-login-once-firstlogin.sh \
		pack-usr-local-script-oninstall.sh \
		pack-script-postinstall

l_usr_local_outset: l_usr_local
	@sudo mkdir -p ${WORK_D}/usr/local/outset/{boot-once,boot-every,login-once,login-every,on-demand,share,FoundationPlist}
	@sudo chown -R root:wheel ${WORK_D}/usr/local/outset
	@sudo chmod -R 755 ${WORK_D}/usr/local/outset
	@sudo mkdir -p ${WORK_D}/usr/local/script
	@sudo chown -R root:wheel ${WORK_D}/usr/local/script
	@sudo chmod -R 755 ${WORK_D}/usr/local/script

pack-usr-local-outset-%: % l_usr_local_outset
	@sudo ${INSTALL} -m 755 -g wheel -o root "${<}" ${WORK_D}/usr/local/outset

pack-usr-local-outset-share-%: % l_usr_local_outset
	@sudo ${INSTALL} -m 644 -g wheel -o root "${<}" ${WORK_D}/usr/local/outset/share

pack-usr-local-outset-FoundationPlist: l_usr_local_outset
	@sudo ${CP} -r "FoundationPlist" ${WORK_D}/usr/local/outset/
	@sudo chown -R root:wheel ${WORK_D}/usr/local/outset/FoundationPlist
	@sudo chmod -R 755 ${WORK_D}/usr/local/outset/FoundationPlist

pack-usr-local-outset-login-once-%: % l_usr_local_outset
	@sudo ${INSTALL} -m 755 -g wheel -o root "${<}" ${WORK_D}/usr/local/outset/login-once

pack-usr-local-script-%: % l_usr_local
	@sudo ${INSTALL} -m 755 -g wheel -o root "${<}" ${WORK_D}/usr/local/script

l_user_local_script: l_usr_local_script
	@sudo chmod +x oninstall.sh
	@sudo oninstall.sh