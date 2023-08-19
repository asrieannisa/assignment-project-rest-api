package main

import "assignment_project_rest_api/routers"

var PORT = ":8080"

func main() {
	routers.StartServer().Run(PORT)
}
