package stg

Config: {
	secret: "stgggggg"

	database: {
		host: "postgres.staging"
		port: "5432"
		dbname: "example"

		username: "example"
		password: "abc123"

		dsn: "host=\(host) user=\(username) password=\(password) dbname=\(dbname) port=\(port) sslmode=disable TimeZone=UTC"
	}
}
