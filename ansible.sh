
ansible test -m apt -a "update_cache=yes" -u ubuntu -b -vvv

ansible test -m apt -a "upgrade=dist" -u ubuntu -b -vvv

ansible test -m apt -a "upgrade=full" -u ubuntu -b -vvv

ansible test -m shell -a "cat /var/run/reboot-required" -u ubuntu -b -vvv

ansible test -m service -a "name=swarm-client state=restarted" -u ubuntu -b -vvv

ansible test -m authorized_key -a "user=ubuntu key=ssh   " -u ubuntu -b -vvv

ansible-playbook -l test scripts/playbooks/reboot-required-test.yml -u ubuntu -b -vvv


example

ansible services -m apt -a "update_cache=yes upgrade=full" -u roman -b -vvv
ansible services -m shell -a "cat /var/run/reboot-required" -u roman -b -vvv
