import * as network from './network'
import './App.css'

import React, {useEffect, useState} from 'react'

import ClassCard from './components/ClassCard'
import RegisterModal from './components/RegisterModal'

function App() {
  const [courses, setCourses] = useState([])
  const [registerCourse, setRegisterCourse] = useState(null)

  const updateClasses = () => {
    network.getClasses()
    .then(setCourses)
  }

  useEffect(() => {
    updateClasses()
  }, [])


  const enroll = (course) => {
    console.log(course)
    setRegisterCourse(course)
  }

  const closeModal = () => setRegisterCourse(false)
  const onRegister = (({course, student}) => {
    console.log({course, student})
    setRegisterCourse(null)
    network.registerStudentForCourse({course, student})
    .then(data => {
      console.log(data)
      if (data.error) {
        alert(data.error.message)
        return
      }

      updateClasses()
    })
  })

  return (
    <div className="App">
      {!!registerCourse && <RegisterModal onRegister={onRegister} open={!!registerCourse} handleClose={closeModal} course={registerCourse}></RegisterModal>}
      {courses.map(course => <ClassCard key={course.id} {...course} enroll={enroll}></ClassCard>)}
    </div>
  );
}

export default App;
