package modles

import (
	"bbs/conf"
	"github.com/jinzhu/gorm"
)

type User struct {
	UserID       int `gorm:"primary_key"`
	Username     string
	Password     string
	Gender       string
	Address      string
	Job          string
	Telephone    string
	Introduction string
}

var db *gorm.DB

func init() {
	db = conf.GetDB()
}
