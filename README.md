# JEDI Comport

The **JEDI Comport** is the forum of the [JEDI](https://www.jediholo.net) role-playing clan, based on [phpBB](https://www.phpbb.com).

## Development

To make local development easier, you can use [Docker](https://docs.docker.com/engine/install/) and [Docker Compose](https://docs.docker.com/compose/install/):

```
# Pull and start all containers
docker compose up -d
```

Then, point your browser to http://comport.dev.jediholo.net and you should see the JEDI Comport forum.

Login as admin/admin123, then go to the ACP:
- In Customize > Install Styles, install the `jediholo` style.
- In General > Board settings, set `jediholo` as the Default and Guest style.

To stop all containers, run `docker compose stop`. \
To remove containers, run `docker compose down`. \
To remove containers and data, run `docker compose down -v`.

## Credits

- **Lead developer:** Fabien Crespel (a.k.a. Soh Raun)
- **Original design:** Jesse Smith (a.k.a. Ctathos Ederoi)
