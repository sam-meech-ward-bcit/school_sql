import axios from 'axios'

export function getClasses() {
  return axios.get('/api/classes')
  .then(data => data.data)
}

export function registerStudentForCourse(data) {
  return axios.post('/api/register', data)
  .then(data => data.data)
}