package models

type Product struct {
	ID    int
	PRICE int    `json:"price"`
	NAME  string `json:"name"`
}
