package design

import (
	"strings"

	srv_s "github.com/hofstadter-io/hofmod-server/schema"
)

ServerDesign: srv_s.#Server & {
	Name: "saas"
	Package: "github.com/hofstadter-io/_saas/server"
	Desicription: "Template app for SaaSification (_saas)"

	EntityConfig: {
		users: true
		groups: true
		organizations: true
		// serviceaccounts: true
	}

	AuthConfig: {
		Authentication: {
			Password: true
			Apikey: true
		}
		Authorization: {
			UserRoles: ["super", "admin", "user", "anon"]
			GroupRoles: ["owner", "admin", "user"]
			OrganizationRoles: ["owner", "admin", "user", "member"]
		}
	}

	DatabaseConfig: {
		type: "postgres"
	}

	EmailConfig: {
		Content: srv_s.DefaultEmails
	}

	Resources: [{
		// Model: CustomModels.Models.Maillist
		// Routes: (srv_s.#DefaultResourceRoutes & { Model: CustomModels.Models.Maillist }).Routes
	// },{
		Model: BuiltinModels.Models.User
		Routes: [ for R in (srv_s.#DefaultResourceRoutes & { Model: BuiltinModels.Models.User }).Routes if strings.HasSuffix(R.Name, "Admin") && !strings.Contains(R.Name, "Create") { R } ]
	}]
}
