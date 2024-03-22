$TTL    604800
@       IN      SOA     ns.univ.zig.sn. admin.univ.zig.sn. (
                    2024032201 ; Serial
                    604800     ; Refresh
                    86400      ; Retry
                    2419200    ; Expire
                    604800 )   ; Negative Cache TTL
;
@       IN      NS      ns.univ.zig.sn.
@       IN      A       10.0.0.1  ; Adresse IP du serveur DNS
ns      IN      A       10.0.0.1
windows IN      A       10.0.0.10
linux   IN      A       10.0.0.20
ftp     IN      A       10.0.0.30
dhcp    IN      A       10.0.0.40
