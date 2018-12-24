cd /var/opengrok/src
ls | xargs -P10 -I{} git -C {} -c core.fileMode=false pull
