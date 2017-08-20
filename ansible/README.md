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

^[lok: [k8sprod1]
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

changed: [k8sprod1]
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
changed: [k8sprod1]
 [WARNING]: Consider using get_url or uri module rather than running curl

 ____________
< PLAY RECAP >
 ------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

k8sprod1                   : ok=7    changed=3    unreachable=0    failed=0
