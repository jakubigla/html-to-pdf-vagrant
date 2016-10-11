# HTML to PDF with Vagrant

This project takes advantage of free [wkhtmltopdf](http://wkhtmltopdf.org/) library.

Steps to follow:
  - Place your HTML file(s) to ```./html``` folder
  - Bring the VM up: ```vagrant up```
  - Run ```make convert``` from your host
  - Magic. Check your ```./pdf``` folder
