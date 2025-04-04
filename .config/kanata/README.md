# Installation and Setup

Install with cargo:

```shell
cargo install kanata
```

For setup you will need to add a new user:

```shell
sudo groupadd uinput
```

And add yourself to it as well:

```shell
sudo usermod -aG input $USER
sudo usermod -aG uinput $USER
```

Log out and log back in

Create the file `/lib/udev/rules.d/100-kanata.rules` and add the following:

```
KERNEL=="uinput", MODE="0660", GROUP="uinput", OPTIONS+="static_node=uinput"
```

You might need to run this after running kanata to verify:

```shell
sudo modprobe uinput
```

# Mapping Keys the right way

a | ; -> SUPER
s | l -> ALT
d | k -> SHIFT
f | j -> CTRL
CapsLock -> ESC

Copy the following to `~/.config/systemd/user/kanata.service`

```
[Unit]
Description=Kanata keyboard remapper
Documentation=https://github.com/jtroo/kanata

[Service]
Environment=PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:$HOME/.cargo/bin
Environment=DISPLAY=:0
Type=simple
ExecStart=/usr/bin/sh -c 'exec $$(which kanata) --cfg $${HOME}/.config/kanata/config.kbd'
Restart=no

[Install]
WantedBy=default.target
```

Then run:

```
systemctl --user daemon-reload
systemctl --user enable kanata.service
systemctl --user start kanata.service
systemctl --user status kanata.service   # check whether the service is running
```

[Original guide](https://github.com/dreamsofcode-io/home-row-mods/tree/main/kanata/linux)
