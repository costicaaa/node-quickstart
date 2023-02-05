import * as dotenv from 'dotenv'
dotenv.config()

import cors from 'cors'
import express from 'express'

const app = express()
app.use(cors())

app.get('/', (req, res) => {
    const testDebug = 4;
    res.send('Hello World!')
})

const port = process.env.WEB_SERVER_NODE_APP_PORT
app.listen(port, () => {
    console.log(`App listening on port ${port}`)
})
