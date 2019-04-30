package main

import (
	"encoding/json"
	"os"
	"testing"
)

func Test_json(t *testing.T) {
	c := Calculator{
		Op1:   2,
		Op2:   3,
		IsAdd: true,
	}

	if err := json.NewEncoder(os.Stdout).Encode(c); err != nil {
		panic(err)
	}

}
