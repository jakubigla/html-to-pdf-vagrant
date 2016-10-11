#!/usr/bin/env bash
find /vagrant/html -iname *.htm* -exec sh -c 'wkhtmltopdf -B 0 -L 0 -R 0 -T 0 {} "/vagrant/pdf/$(basename "{}" | cut -d. -f1).pdf"' \;
