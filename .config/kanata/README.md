# Mapping Keys the right way

a | ; -> SUPER
s | l -> ALT
d | k -> SHIFT
f | j -> CTRL
CapsLock -> ESC

Copy the following to `/usr/lib/systemd/system/kanata.service`

```
[Unit]
Description=Kanata keyboard remapper
Documentation=https://github.com/jtroo/kanata

[Service]
Type=simple
ExecStart=/usr/bin/kanata --cfg /home/hugo/.config/kanata/config.kbd
Restart=never

[Install]
WantedBy=default.target
```

Then run:

```
sudo systemctl daemon-reload
sudo systemctl enable kanata.service
sudo systemctl user start kanata.service
sudo systemctl user status kanata.service   # check whether the service is running
```

[Original guide](https://github.com/dreamsofcode-io/home-row-mods/tree/main/kanata/linux)
[Systemd linux comment](https://github.com/jtroo/kanata/discussions/130#discussioncomment-8518832)
