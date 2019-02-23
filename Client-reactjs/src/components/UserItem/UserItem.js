import React, { Component } from 'react';
import { Link } from 'react-router-dom';

class UserItem extends Component {

    onDelete = (id) => {
        console.log(id);
        if (confirm('Are you sure delete this User?')) { //eslint-disable-line
            this.props.onDelete(id);
        }
    }

    render() {
        var { user, index } = this.props;
        let roleNames = user.roles.map(e => { return e.name });
        return (
            <tr>

                <td>{user.id}</td>
                <td>{user.name}</td>
                <td>
                    <img src={`http://localhost/uploads/user-images/${user.id}/${user.id}` + '.jpg'} class="img-thumbnail" width="50" height="50" />
                </td>
                <td>{user.username}</td>
                <td>{user.email}</td>
                <td>{roleNames}</td>
                <td>
                    <Link
                        to={`/user/${user.id}/promote`}
                        className="btn btn-info mr-10"
                    >
                        Promote
                    </Link>
                    <Link
                        to={`/user/${user.id}/disband`}
                        className="btn btn-success mr-10"
                    >
                        Disband
                    </Link>
                    <button
                        type="button"
                        className="btn btn-danger"
                        onClick={() => this.onDelete(user.id)}
                    >
                        Delete
                    </button>
                </td>
            </tr>
        );
    }
}

export default UserItem;
