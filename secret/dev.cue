package dev

Config: {
	secret: "shhhhhhh"

	database: {
		host: "localhost"
		port: "5432"
		dbname: "saas"

		username: "saas"
		password: "saas"

		dsn: "host=\(host) user=\(username) password=\(password) dbname=\(dbname) port=\(port) sslmode=disable TimeZone=UTC"
	}
}
