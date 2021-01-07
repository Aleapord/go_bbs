package conf

import (
	"fmt"
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

type Conf struct {
	database string
	username string
	password string
	port     string
}

var conf Conf
var db *gorm.DB

func init() {
	conf = Conf{database: "mysql", username: "root", password: "123456", port: "3306"}
	var err error
	db, err = gorm.Open("mysql", fmt.Sprintf("#{conf.username}:#{conf.password}@(127.0.0.1)/bbs"))
	if err != nil {
		panic(err)
	}
}
func GetDB() *gorm.DB {
	return db
}

func Close() {
	_ = db.Close()

}
