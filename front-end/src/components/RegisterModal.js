import React, { useState } from 'react';
import { makeStyles } from '@material-ui/core/styles';
import Modal from '@material-ui/core/Modal';
import Backdrop from '@material-ui/core/Backdrop';
import Fade from '@material-ui/core/Fade';
import TextField from '@material-ui/core/TextField';
import Button from '@material-ui/core/Button';


const useStyles = makeStyles((theme) => ({
  modal: {
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
  },
  paper: {
    backgroundColor: theme.palette.background.paper,
    border: '2px solid #000',
    boxShadow: theme.shadows[5],
    padding: theme.spacing(2, 4, 3),
  },
  form: {
    display: "flex",
    flexDirection: "column"
  }
}));

export default function RegisterModal(props) {
  const classes = useStyles();
  const [student, setStudent] = useState({firstName: '', lastName: ''})
  const { open, handleClose, course, onRegister } = props

  const onSubmit = event => {
    event.preventDefault() 
    onRegister({course, student})
  }

  return (
    <div>
      <Modal
        aria-labelledby="transition-modal-title"
        aria-describedby="transition-modal-description"
        className={classes.modal}
        open={open}
        onClose={handleClose}
        closeAfterTransition
        BackdropComponent={Backdrop}
        BackdropProps={{
          timeout: 500,
        }}
      >
        <Fade in={open}>
          <div className={classes.paper}>
            <h2 id="transition-modal-title">Register For Class:</h2>
            <p id="transition-modal-description">{course.title}</p>
            <form className={classes.form} noValidate autoComplete="off" onSubmit={onSubmit}>
              <TextField value={student.firstName} onChange={e => setStudent({...student, firstName: e.target.value})} id="outlined-basic" label="First Name" variant="outlined" />
              <TextField value={student.lastName} onChange={e => setStudent({...student, lastName: e.target.value})} id="outlined-basic" label="Last Name" variant="outlined" />
              <Button variant="contained" color="primary" type="submit">Register</Button>
            </form>
          </div>
        </Fade>
      </Modal>
    </div>
  );
}
