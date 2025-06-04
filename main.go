package main

import (
	"database/sql"
	"embed"
	"log"

	_ "modernc.org/sqlite"
)

//go:embed db/schema db/data
var meta embed.FS

const schemaDir = "db/schema/"

const dataDir = "db/data/"

func main() {
	db, err := sql.Open(
		"sqlite",
		":memory:?_pragma=foreign_keys(1)",
	)
	if err != nil {
		log.Fatal(err)
	}

	log.Println("Reading schema from", "schema.sql")
	schemaFile, err := meta.ReadFile(schemaDir + "schema.sql")
	if err != nil {
		log.Fatal(err)
	}

	log.Println("Defining data from", "data.sql")
	result, err := db.Exec(string(schemaFile))
	if err != nil {
		log.Fatal(err)
		log.Fatal(result)
	}

	log.Println("Reading data from", "data.sql")
	dataFile, err := meta.ReadFile(dataDir + "data.sql")
	if err != nil {
		log.Fatal(err)
	}

	log.Println("Inserting data from", "data.sql")
	result, err = db.Exec(string(dataFile))
	if err != nil {
		log.Fatal(err)
		log.Fatal(result)
	}
}
