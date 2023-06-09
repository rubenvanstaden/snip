#!/usr/bin/env bash
#
# Description and purpose of script.

set -e

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
        log.Fatalf("$1: %v", err)
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

forselect() {
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

ordone() {
cat << EOF
orDone: = func(done, c <-chan interface {}) <-chan interface {} {
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
    fmt.Println("1st goroutine sleeping...")
    time.Sleep(1)
}()
wg.Wait()

EOF
}
