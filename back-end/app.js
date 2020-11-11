const express = require('express')
const path = require('path')





module.exports = function(database) {

  const app = express()

  app.use(express.static(path.join(__dirname, 'build')))

  app.use(express.json())
  app.use(express.urlencoded({ extended: false }))

  app.get('/api/', (req, res) => {
    res.send('hello')
  })


  app.get('/api/students', (req, res) => {
    database.run(`
    SELECT * 
    FROM student;
    `).then(rows => {
      res.send(rows)
    })
    .catch(err => {
      res.send(err)
    })
  })

  app.get('/api/classes/:id/students', (req, res) => {
    database.run(`
    SELECT * 
    FROM student
    JOIN enrollment 
    ON student.id = enrollment.student_id
    WHERE enrollment.class_id = ${req.params.id}
    `).then(rows => {
      res.send(rows)
    })
    .catch(err => {
      res.send(err)
    })
  })

  app.get('/api/classes', (req, res) => {
    database.run(`
    SELECT class.id, course.title, class.start_date, instructor.first_name as instructor, count(enrollment.id) as total_enrollments
    FROM course
    INNER JOIN class
    ON class.course_id = course.id
    LEFT OUTER JOIN instructor
    ON instructor.id = class.instructor_id
    LEFT JOIN enrollment
    ON enrollment.class_id = class.id
    GROUP BY class.id, course.title, class.start_date, instructor
    ORDER BY total_enrollments DESC;
    `).then(rows => {
      res.send(rows)
    })
    .catch(error => {
      if (error.sqlMessage) {
        error.message = error.sqlMessage
      }
      res.send(error)
    })
  })


  app.post('/api/register', async (req, res) => {
    const {course, student} = req.body
    console.log(req.body)
    
    try {

      const results = await database.run(`
        SELECT COUNT(*) as total_enrollments
        FROM enrollment
        WHERE class_id = ${course.id}
      `)
      const { total_enrollments } = results[0]
      
      if (total_enrollments >= 10) {
        throw {
            message: "There are too many students enrolled already"
        }
      }

      const newStudent = await database.run(`
        INSERT INTO student (first_name, last_name)
        VALUES ('${student.firstName}', '${student.lastName}')
      `)
      await database.run(`
        INSERT INTO enrollment (student_id, class_id)
        VALUES (${newStudent.insertId}, ${course.id})
      `)
      res.send("🤗")
    } catch (err) {
      const error = {...err}
      if (error.sqlMessage) {
        error.message = error.sqlMessage
      }
      console.log(error)
      res.send({error})
    }

  })

  app.post('/api/register2', async (req, res) => {
    const {course, student} = req.body
    console.log(req.body)
    
    try {
      await database.run(`
        CALL register_student_to_class('${student.first_name}', '${student.last_name}', ${course.id})
      `)
      
      res.send("🤗")
    } catch (err) {
      const error = {...err}
      if (error.sqlMessage) {
        error.message = error.sqlMessage
      }
      console.log(error)
      res.send({error})
    }

  })


  app.get("*", (req, res) => {
    res.sendFile(path.join(__dirname, "build", "index.html"));
  });

  return app
}