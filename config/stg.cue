package stg

Config: {
	host: "http://localhost"
	port: "1323"
	logging: {
		level: "info"
		// format: "..." // https://echo.labstack.com/middleware/logger
	}

	auth: {
		passwordEntropy: uint | *60
	}
}
