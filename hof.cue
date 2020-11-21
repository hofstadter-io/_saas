package saas

import (
	srv_g "github.com/hofstadter-io/hofmod-server/gen"

	"github.com/hofstadter-io/_saas/design"
)

Server: srv_g.#HofGenerator & {

	Outdir: "./server"
	Module: "github.com/hofstadter-io/_saas"

	Server: design.ServerDesign

	Datamodel: {
		Name: "ServerDatamodel"
		Modelsets: {
			Custom: design.CustomModels
			Builtin: design.BuiltinModels
		}
	}

	Releases: {
		Disable:  false
		Draft:    false
		Author:   "Hofstadter, Inc"
		Homepage: "https://hofstadter.io"

		GitHub: {
			Owner: "hofstadter-io"
			Repo:  "_saas"
		}

		Docker: {
			Maintainer: "Hofstadter, Inc <open-source@hofstadter.io>"
			Repo:       "hofstadter"
		}
	}

} @gen(server,golang)
