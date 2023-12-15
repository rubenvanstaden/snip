#!/usr/bin/env bash

set -e

htmx() {
cat << EOF
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Title</title>
    <link rel="stylesheet" href="/static/style.css" type="text/css">
    <script src="https://unpkg.com/htmx.org@1.9.2"></script>
    <script src="https://unpkg.com/hyperscript.org@0.9.12"></script>
</head>

<body hx-boost="true">
</body>

</html>
EOF
}

css() {
cat << EOF
*, *::before, *::after {
    box-sizing: border-box;
}

* {
    margin: 0;
    padding: 0;
    line-height: 1.5;
}

input, button, textarea, select {
    font: inherit;
}

p, h1, h2, h3, h4, h5, h6 {
    overflow-wrap: break-word;
}

:root {
    --clr-black: #1E2227;
}

body {
    font-family: monospace;
    font-size: 16px;
    background: var(--clr-black);
}
EOF
}
