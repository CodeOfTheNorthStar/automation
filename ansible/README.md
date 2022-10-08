#### create a hosts 
it's the place where all ur hosts(servers) live:
<img src="./readme_static/Pasted%20image%2020220325233016.png">
#### create ansible.cfg
you tell ansible where the inventory file is (inventory is the place where u store the hosts)
<img src="./readme_static/Pasted%20image%2020220325233135.png">

##### test the connections:
```bash
 ansible all -m ping -i hosts
```

#### define tasks to do 
in a folder called tasks add ur tasks:
<img src="./readme_static/Pasted%20image%2020220325233223.png">

vars ( "{{ I AM A VAR }}" ) live in 
<img src="./readme_static/Pasted%20image%2020220325233314.png">
<img src="./readme_static/Pasted%20image%2020220325233304.png">
### create a secret thingy

```bash
ansible-vault create secret.yml
ansible-vault edit secret.yml
```

### connect and play the play book:
remember capital K!
second one without asking for root pass(-K) is cause we disabled it in a task!

```bash
ansible-playbook run.yml -K --ask-vault-pass -i hosts
ansible-playbook run.yml --ask-vault-pass -i hosts
```
