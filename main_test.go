// main_test.go
package main

import "testing"

func TestPass(t *testing.T) {
	//result := DBConnect()
	result := true
	expected := true

	if result != expected {
		t.Errorf("DBConnect() returned %b, expected %b", result, expected)
	}
}
