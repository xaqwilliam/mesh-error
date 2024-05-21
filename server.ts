import express from 'express';
import { createBuiltMeshHTTPHandler } from './.mesh/index.js';

const app = express()
app.use('/graphql', createBuiltMeshHTTPHandler())
app.listen(4001, () => {
    console.log('LISTENING ON PORT 4001')
})
