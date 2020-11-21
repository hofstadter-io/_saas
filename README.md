# `_saas`

An open source toolset for B2B SaaS operations by Hofstadter.

### Running the example

The design is in the `./design/*.cue` files.
It uses

- `hofmod-server` for a REST API and extras
- `hofmod-cli` for the binary entrypoint

##### Generate and build the server

```sh
hof mod vendor
make server
```

##### Database setup

```sh
# Starts Postgres 13 in docker
make db-up

# Check db connection
./server db test

# Migrate the DB Schema
./server db migrate

# Seed the database
./server db seed

# Run the PSQL repl
make psql

# Stop the database
make db-down

# Destroy the database
make db-nuke
```

##### Run the server

```sh
# Run the example server in dev mode
./saas run

# Print server config and secrets
./saas config

# Print server routes
./saas routes
```

##### Calling the server

```sh
# bad route(s)
curl localhost:1323              // not found  (404)

# test auth
saas api -a 953e7caf-1fa6-4558-a693-4118fce9615e get auth/test

# alive & metrics
saas api -a 953e7caf-1fa6-4558-a693-4118fce9615e get internal/alive
saas api -a 953e7caf-1fa6-4558-a693-4118fce9615e get internal/metrics

# entity routes
saas api -a 953e7caf-1fa6-4558-a693-4118fce9615e get admin/user
```

