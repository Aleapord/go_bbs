package static

import (
	"github.com/gin-gonic/gin"
	"net/http"
)

func Home(c *gin.Context) {
	c.HTML(http.StatusOK, "index.html", nil)
	return
}
func Sections(c *gin.Context) {
	c.HTML(http.StatusOK, "page-categories.html", nil)
	return
}
func SingleSection(c *gin.Context) {
	c.HTML(http.StatusOK, "page-categories-single.html", nil)
	return
}
