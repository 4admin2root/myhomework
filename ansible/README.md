# follow me

➜  ansible git:(master) ✗ ansible-playbook -i hosts -b app_prod.yml
 _________________
< PLAY [app_prod] >
 -----------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

 ______________
< TASK [setup] >
 --------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 _________________________________
< TASK [app : install python-pip] >
 ---------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 ________________________________
< TASK [app : install docker-py] >
 --------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 __________________________
< TASK [app : docker pull] >
 --------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 _________________________
< TASK [app : docker run] >
 -------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [k8sprod1]
 _________________________________
< TASK [app : wait for appserver] >
 ---------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 __________________________________
< TASK [app : http get helloworld] >
 ----------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

FAILED - RETRYING: TASK: app : http get helloworld (50 retries left).
FAILED - RETRYING: TASK: app : http get helloworld (49 retries left).
FAILED - RETRYING: TASK: app : http get helloworld (48 retries left).
changed: [k8sprod1]
 [WARNING]: Consider using get_url or uri module rather than running curl

 ___________________
< PLAY [nginx_prod] >
 -------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

 ______________
< TASK [setup] >
 --------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 ___________________________________
< TASK [nginx : install python-pip] >
 -----------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 __________________________________
< TASK [nginx : install docker-py] >
 ----------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 ____________________________
< TASK [nginx : docker pull] >
 ----------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 ________________________________________
< TASK [nginx : create /opt/myhomework/] >
 ----------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1] => (item=static)
ok: [k8sprod1] => (item=nginx)
 ________________________________
< TASK [nginx : yum install zip] >
 --------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 __________________________________
< TASK [nginx : download zip file] >
 ----------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 ____________________________________
< TASK [nginx : template nginx file] >
 ------------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 ___________________________
< TASK [nginx : docker run] >
 ---------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [k8sprod1]
 _______________________________
< TASK [nginx : wait for nginx] >
 -------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod1]
 _____________________________
< TASK [nginx : http get png] >
 -----------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [k8sprod1]
 ____________
< PLAY RECAP >
 ------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

k8sprod1                   : ok=18   changed=4    unreachable=0    failed=0
