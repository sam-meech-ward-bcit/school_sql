const mysql = require('mysql')

const dbDetails = {
  connectionLimit : 10,
  host     : process.env.MYSQL_HOST || 'localhost',
  user     : process.env.MYSQL_USERNAME || 'root',
  password : process.env.MYSQL_PASSWORD || '',
  database : process.env.MYSQL_DATABASE || 'school'
}
const connection = mysql.createPool(dbDetails)



function run(sql) {
  return new Promise((resolve, reject) => {
    connection.query(sql, null, function (error, results, fields) {
      if (error) {
        reject(error); return
      }
      resolve(results)
    })
  })
}
exports.run = run

function _callProcedure(callback, name, ...params) {
  let query = `CALL ${name}(${params.map(() => '?').join(', ')})`;

  console.log(query, params)
  connection.query(query, params, function (error, results, fields) {
    if (error) {
      console.log(query, error)
      return callback(error)
    }
    callback(null, results[0])
  })
}