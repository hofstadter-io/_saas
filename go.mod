module github.com/hofstadter-io/_saas

go 1.15

require (
	cuelang.org/go v0.2.2
	github.com/dgrijalva/jwt-go/v4 v4.0.0-preview1
	github.com/go-playground/validator/v10 v10.4.1
	github.com/google/uuid v1.1.2
	github.com/hofstadter-io/hof v0.5.13
	github.com/jackc/pgx/v4 v4.9.2
	github.com/labstack/echo-contrib v0.9.0
	github.com/labstack/echo/v4 v4.1.17
	github.com/labstack/gommon v0.3.0
	github.com/lane-c-wagner/go-password-validator v0.1.0
	github.com/mailgun/mailgun-go/v4 v4.3.0
	github.com/parnurzeal/gorequest v0.2.16
	github.com/prometheus/client_golang v1.8.0
	github.com/spf13/cobra v1.1.1
	golang.org/x/crypto v0.0.0-20201117144127-c1f2f97bffc9
	gorm.io/driver/postgres v1.0.5
	gorm.io/gorm v1.20.7
)

replace cuelang.org/go => ../../cue/cue
