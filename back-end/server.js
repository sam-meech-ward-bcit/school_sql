const database = require('./database')
const app = require('./app')(database)

const port = process.env.PORT || 4040
app.listen(port, () => {
  console.log("listening on port ", port)
})