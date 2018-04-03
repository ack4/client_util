Set sh = CreateObject("WScript.Shell")
sh.Run "bash.exe -c ""echo password|sudo -S mkdir /var/run/sshd;echo password|sudo -S /usr/sbin/sshd -D""",0,False
