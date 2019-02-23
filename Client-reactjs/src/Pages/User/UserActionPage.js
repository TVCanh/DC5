import React, { Component } from 'react';
import {createUser, getOneUser, updateUser} from '../../util/APIUtils';
import {NavLink} from 'react-router-dom';
class UserActionPage extends Component {
    constructor(props){
        super(props);
        this.state={
            id:'',
            name:'',
            username:'',
            email:'',
            password:'',
            role: []
        };
    }

    componentDidMount(){
        var {match} = this.props;
        if(match){
            var id =match.params.id ;
            console.log(id);
            getOneUser(id).then(res =>{
                console.log(res);
                this.setState({
                    id : res.id,
                    name: res.name,
                    username: res.username,
                    email: res.email,
                    password: res.password,
                    // role: res.roles[0].name
                });
            });
        }
    }

    onChange = (e) =>{
        var target = e.target;
        var name = target.name;
        var value = target.value;
        this.setState({
            [name] : value,
        }) 
        console.log(this.state)
    }

    onSave = (e) =>{
        e.preventDefault();
        //console.log(this.state);
        var {id, name, username, email, password, role} = this.state;
        const userRequets = {
            name : name,
            username : username,
            email : email,
            password : password,
            role: [role]
        };
        console.log(userRequets);
        if(id){
            updateUser(id, userRequets)
            .then(res => {
                console.log(res);
            }).catch(err => {
                console.log(err);
            });
            alert("Updated user!");
            this.props.history.push("/users");
        }else{
            createUser(userRequets)
             .then(res => {
                 console.log(res);
             }).catch(err => {
            console.log(err);
         });
        alert("Created user!");
        this.props.history.push("/users");
        }     
       
    }
    render() {
        var { name, username, email, password} = this.state;
        return (
            <div className="wrapper">
                <form className="form-wrapper" onSubmit={this.onSave}>
                <h2 align="center">Create a user</h2>
                    <div className="form-group">
                        <label><b>Name</b></label>
                        <input 
                        type="text" 
                        className="form-control" 
                        name="name"
                        value={name}
                        onChange={this.onChange}
                        />
                    </div>
                    <div className="form-group">
                        <label><b>Username</b></label>
                        <input 
                        type="text" 
                        className="form-control" 
                        name="username"
                        value={username}
                        onChange={this.onChange}
                        />
                    </div>
                    <div className="form-group">
                        <label><b>Email</b></label>
                        <input 
                        type="email" 
                        className="form-control" 
                        name="email"
                        value={email}
                        onChange={this.onChange}
                        />
                    </div>
                    <div className="form-group">
                        <label><b>Password</b></label>
                        <input 
                        type="password" 
                        className="form-control" 
                        name="password"
                        value={password}
                        onChange={this.onChange}
                        />
                    </div>
                    <div className="form-group">
                        <label ><b>Select role:</b></label>
                        <select className="form-control" name="role" onChange={this.onChange}>
                            <option value="normal">Normal</option>
                            <option value="staff">satff</option>
                            <option value="supervisor">Supervisor</option>
                        </select>
                    </div>
                    <NavLink to="/users" className="btn btn-danger">Back</NavLink> <br/> 
                    <button type="submit" className="btn btn-primary">Save</button>
                </form>
            </div>
        );
    }
}


export default UserActionPage;
