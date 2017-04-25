# WiredAF
> Wiring for ActionFPS using [Ansible](http://docs.ansible.com/ansible/index.html)

To `odin` (`actionfps.com`), it deploys:
* `af-syslog`
* `af-web`

```
$ ansible-galaxy install geerlingguy.repo-epel
$ ansible-galaxy install geerlingguy.nodejs
$ ansible-galaxy install geerlingguy.java
$ ansible-galaxy install geerlingguy.git
$ ansible-galaxy install geerlingguy.nginx
$ ansible-playbook -i odin, playbook.yml
```

To run locally [with Vagrant](https://www.vagrantup.com/docs/provisioning/ansible.html), do:

```
$ vagrant up
```

Do:
```
$ vagrant provision
```

The first run will take a long time.

Then go to http://localhost:8111/

I tried to do with Docker but it doesn't want to use my OS Docker.

If you change any settings you can type `vagrant reload`, it'll fix it up for you.