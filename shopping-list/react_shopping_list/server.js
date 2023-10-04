const express = require('express')
const serveStatic = require('serve-static')
const path = require('path')

const app = express()

app.use('/', serveStatic(path.join(__dirname, 'build')))

const port = process.env.PORT || 3002 // for rails on 3001

app.listen(port, () => {
    console.log(`Server started on port ${port}`)
})
