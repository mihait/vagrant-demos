Vagrant simple demos with different provisioners 
================================================

Assumptions
===========

Vagrant version: 1.6.3
VirtualBox 4.3.12
Packer 0.6


::

    $ vagrant plugin list

    vagrant-berkshelf (2.0.1)
        - Version Constraint: >= 2.0.1
    vagrant-login (1.0.1, system)
    vagrant-omnibus (1.4.1)
    vagrant-share (1.1.0, system)

::

    $ vagrant box list

    precise64 (virtualbox, 0)
    trusty_64 (virtualbox, 0)
    wheezy_64 (virtualbox, 0)   <--- you'll need this one :)



Usage
=====

::

    $ git clone https://github.com/mihait/vagrant-demos
    $ cd vagrant-demos

    $ cd <desired-project> #shell, chef-solo, salt-masterless, puppet
    $ vagrant up


Attention!
==========

All the demos require the "wheezy_64" template which you can build by installing 
packer (www.packer.io) and using the follwing vm defs. repository located at:

https://github.com/mihait/packer-templates

-- OR --

You can simply replace the box image with another debian/ubuntu image from
http://www.vagrantbox.es


