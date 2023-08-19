package routers

import (
	"assignment_project_rest_api/controllers"
	"assignment_project_rest_api/database"

	"github.com/gin-gonic/gin"
)

func init() {
	database.StartDB()
}

func StartServer() *gin.Engine {
	router := gin.Default()

	router.POST("/Student", controllers.CreateStudents)
	router.GET("/Students/", controllers.GetAllStudents)
	router.GET("/Students/:ID", controllers.GetStudentsById)
	router.PUT("/Student/:ID", controllers.UpdateStudents)
	router.DELETE("/Student/:ID", controllers.DeleteStudents)

	return router
}
