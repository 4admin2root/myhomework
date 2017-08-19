# follow me


➜  ansible git:(master) ✗ ansible-playbook -i hosts -b app.yml
 ____________
< PLAY [app] >
 ------------
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

ok: [k8sprod2]
 _________________________________
< TASK [app : install python-pip] >
 ---------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod2]
 ________________________________
< TASK [app : install docker-py] >
 --------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod2]
 __________________________
< TASK [app : docker pull] >
 --------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod2]
 _________________________
< TASK [app : docker run] >
 -------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

changed: [k8sprod2]
 _________________________________
< TASK [app : wait for appserver] >
 ---------------------------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

ok: [k8sprod2]
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
changed: [k8sprod2]
 [WARNING]: Consider using get_url or uri module rather than running curl

 ____________
< PLAY RECAP >
 ------------
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||

k8sprod2                   : ok=7    changed=2    unreachable=0    failed=0
