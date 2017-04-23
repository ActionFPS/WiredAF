# WiredAF
> Wiring for ActionFPS using [Ansible](http://docs.ansible.com/ansible/index.html)

To `odin` (`actionfps.com`), it deploys:
* `af-syslog`
* `af-web`

```
$ ansible-galaxy install geerlingguy.java
$ ansible-galaxy install geerlingguy.git
$ ansible-galaxy install geerlingguy.nginx
$ ansible-playbook -i odin, playbook.yml
```

To run locally [with Vagrant](https://www.vagrantup.com/docs/provisioning/ansible.html), do:

````
$ vagrant up
```

I tried to do with Docker but it doesn't want to use my OS Docker.