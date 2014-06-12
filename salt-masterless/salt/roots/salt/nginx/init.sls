nginx:
  pkg:
    - installed
  service:
    - running
    - watch:
      - file: cp-www
      - file: cp-conf
    - require:
      - file: cp-conf
      - file: cp-www

cp-conf:
  file.managed:
    - name: /etc/nginx/sites-available/default
    - source: salt://nginx/files/default
    - mode: 644
    - user: root
    - group: root

cp-www:
  file.recurse:
    - name: /var/www
    - source: salt://nginx/files/www
    - user: www-data
    - group: www-data
    - makedirs: True
