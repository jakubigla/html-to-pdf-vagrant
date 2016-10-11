# HTML to PDF with Vagrant
[![Github All Releases](https://img.shields.io/github/downloads/jakubigla/html-to-pdf-vagrant/total.svg)]()

This project takes advantage of free [wkhtmltopdf](http://wkhtmltopdf.org/) library.

Steps to follow:
  - Place your HTML file(s) to ```./html``` folder
  - Bring the VM up: ```vagrant up```
  - Run ```make convert``` from your host
  - Magic. Check your ```./pdf``` folder

TODO:
  - Add Docker as an alternative for Vagrant