package design

import (
	hof "github.com/hofstadter-io/hof/schema"

	srv_s "github.com/hofstadter-io/hofmod-server/schema"
)

CustomModels: hof.#Modelset & {
	MigrateOrder: [
		Models.Maillist,
	]
	Models: {
		Maillist: hof.#Model & {
			Name: "Maillist"
			ORM: true
			Softdelete: true
			Permissioned: true

			Fields: {
				name: hof.#String & { validation: { required: true } }
				brief: hof.#String & { length: 256, validation: { required: true } }
			}
			Relations: {
				Members: {
					relation: "Many2Many"
					type: "User"
					table: "maillist_members"
				}
			}
		}
	}
}

BuiltinModels: srv_s.#BuiltinModels & {
	Server: {
		AuthConfig: ServerDesign.AuthConfig
		EntityConfig: ServerDesign.EntityConfig
	}

	Models: {
		User: hof.#Model & {
			Relations: {
				Maillists: {
					relation: "Many2Many"
					type: "Maillist"
					table: "maillist_members"
				}
			}
		}
	}
}
