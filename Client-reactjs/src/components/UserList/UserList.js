import React, { Component } from 'react';
import './UserList.css' ;

class UserList extends Component {

    onSort = (key) =>{
        //console.log(this.props.children[1])
        this.props.children[1](key)
    }
    render() {
        return (
            <div className="panel panel-primar " >
                <div className="panel-heading">
                    <h3 className="panel-title " align="center">User List</h3>
                </div>
                <div className="panel-body">
                    <table className="table table-bordered table-hover">
                        <thead className="thead">
                            <tr>
                                <th onClick={() => this.onSort('id')}>ID</th>
                                <th onClick={() => this.onSort('name')}>Name</th>
                                <th>Avatar</th>
                                <th onClick={() => this.onSort('username')}>Username</th>
                                <th onClick={() => this.onSort('email')}>Email</th>
                                <th onClick={() => this.onSort('role')}>Role</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            {this.props.children}
                        </tbody>
                    </table>
                </div>
            </div>

        );
    }
}

export default UserList;
