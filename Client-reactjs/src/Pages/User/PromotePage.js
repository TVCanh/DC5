import React, { Component } from 'react';
import { getOneUser, promote } from '../../util/APIUtils';
import { NavLink } from 'react-router-dom';
import '../../components/Signin.css'

class PromotePage extends Component {
    constructor(props) {
        super(props);
        this.state = {
            id: '',
            name: '',
            username: '',
            email: '',
            role: []
        };
    }

    componentDidMount() {
        var { match } = this.props;
        if (match) {
            var id = match.params.id;
            console.log(id);
            getOneUser(id).then(res => {
                console.log(res);
                this.setState({
                    id: res.id,
                    name: res.name,
                    username: res.username,
                    email: res.email,

                });
            });
        }


    }

    onChange = (e) => {
        this.setState({
            role: [e.target.value]
        })
        console.log(this.state)
    }

    onSave = (e) => {
        e.preventDefault();
        var { id,role } = this.state;
        const roleRequets = {
            role: role
        };
        console.log(this.state);
        if (id) {
            promote( roleRequets,id)
                .then(res => {
                    console.log(res);
                }).catch(err => {
                    console.log(err);
                });
            alert("Updated user!");
            this.props.history.push("/users");
        }
    }
    render() {
        //  debugger;
        var { name, username, email} = this.state;
        return (
            <div className="wrapper">
                <form className="form-wrapper" onSubmit={this.onSave}>
                <h2 align="center">Promote form</h2>
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
                        <label ><b>Select role:</b></label>
                        <select className="form-control" name="role" value={this.state.role} onChange={this.onChange}>
                            <option value="staff">satff</option>
                            <option value="supervisor">Supervisor</option>
                        </select>
                    </div>
                    <br />
                    <NavLink to="/users" className="btn btn-danger">Back</NavLink> <br/>
                    <button type="submit" className="btn btn-primary">Save</button>
                </form>
            </div>
        );
    }
}


export default PromotePage;
