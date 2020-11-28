package dev

Group: {
	admins: {
		id: "88d9cd4d-2082-4820-866e-4b05786bd573"
		name: "admins"
		about: "admin users"
	}
	users: {
		id: "78430d66-dc58-467c-bacf-d607adbd725e"
		name: "all users"
		about: "all users in the users group"
	}
}

GroupPerm: {
	admin1: {
		UserID: User.super.id
		GroupID: Group.admins.id
		role: "owner"
	}
	admin2: {
		UserID: User.admin.id
		GroupID: Group.admins.id
		role: "user"
	}

	user0: {
		UserID: User.super.id
		GroupID: Group.users.id
		role: "owner"
	}
	user1: {
		UserID: User.admin.id
		GroupID: Group.users.id
		role: "admin"
	}
	user2: {
		UserID: User.user.id
		GroupID: Group.users.id
		role: "user"
	}
}

