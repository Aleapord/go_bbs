package router

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func InitRouter() *gin.Engine {
	engine := gin.Default()
	engine.LoadHTMLGlob("templates/*")
	engine.StaticFS(".", http.Dir("./static"))

	return engine

}
