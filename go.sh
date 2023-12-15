#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

makefile() {
cat << EOF
fmt:
	go mod tidy -compat=1.17
	gofmt -l -s -w .

run:
	go run .
EOF
}

http() {
cat << EOF
package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
)

func handle(w http.ResponseWriter, r *http.Request) {
    log.Println("wekjfjwef")
    if r.Method == "POST" {
        body, err := io.ReadAll(r.Body)
        if err != nil {
            http.Error(w, "Error reading request body", http.StatusInternalServerError)
        } else {
            fmt.Printf("Highlighted Text: %s\n", string(body))
        }
    } else {
        http.Error(w, "Invalid request method", http.StatusMethodNotAllowed)
    }
}

func main() {

    fs := http.FileServer(http.Dir("./static"))
    http.Handle("/", fs)

    http.HandleFunc("/highlight", handle)

    http.ListenAndServe(":8080", nil)
}
EOF
}

range() {
cat << EOF
    for i, v := range $1 {
    }
EOF
}

iter() {
cat << EOF
    for i := 0; i < $1; i++ {
    }
EOF
}

err() {
cat << EOF
    if err != nil {
        return err
    }
EOF
}

iff() {
cat << EOF
    if $1 {
    }
EOF
}

fn() {
cat << EOF
func $1($2) error {
    return nil
}
EOF
}

mt() {
cat << EOF
func (s *$1) $2($3) error {
    return nil
}
EOF
}

multiplex() {
cat << EOF
select {
case <-ch1:
case x := <-ch2:
case ch3 <- y:
default:
}
EOF
}

polling() {
cat << EOF
for {
    select {
    case <-done:
        return
    default:
        // Do non-preemptable work
    }
}
EOF
}

gofn() {
cat << EOF
go func() {
}()
EOF
}

ordone() {
cat << EOF
orDone := func(done, c <-chan interface {}) <-chan interface {} {
    valStream := make(chan interface {})
    go func() {
        defer close(valStream)
        for {
            select {
            case <-done:
                return
            case v, ok := <-c:
                if ok == false {
                    return
                }
                select {
                    case valStream <-v:
                    case <-done:
                }
            }
        }
    }()
    return valStream
}
for val := range orDone(done, myChan) {
    // Do something with val
}
EOF
}

syncwait() {
cat << EOF
var wg sync.WaitGroup
wg.Add(1)
go func() {
    defer wg.Done()
    // add function logic
}()
wg.Wait()
EOF
}

testunit() {
cat << "EOF"
func TestUnit(t *testing.T) {
	cases := []struct {
		age1     int
		age2     int
		expected bool
	}{
		{
			age1:     1,
			age2:     2,
			expected: false,
		},
		{

			age1:     2,
			age2:     1,
			expected: true,
		},
	}

	for _, c := range cases {
		p1 := NewPerson(c.age1)
		p2 := NewPerson(c.age2)

		got := p1.older(p2)

		if got != c.expected {
			t.Errorf("Expected %v > %v, got %v", p1.age, p2.age, got)
		}
	}
}
EOF
}
