package main

import "bbs/router"

func main() {
	router.InitRouter().Run(":8080")

}
