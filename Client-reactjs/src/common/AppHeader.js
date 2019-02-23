import React, { Component } from 'react';
import {
  NavLink,
  withRouter
} from 'react-router-dom';
import './AppHeader.css';
import { logout } from '../util/APIUtils'
import { ACCESS_TOKEN } from '../constants';
import { Layout, Menu } from 'antd';
const Header = Layout.Header;

class AppHeader extends Component {
  constructor(props) {
    super(props);

  }

  render() {

    let menuItems;
    if (this.props.currentUser) {
      var name = this.props.currentUser.name;
      var username = this.props.currentUser.username;
      var id = this.props.currentUser.id;
      var role = localStorage.getItem('role');
      if (role === "ROLE_ADMIN") {
        role = "Admin"
      } else if (role === "ROLE_NORMAL") {
        role = "Normal"
      } else if (role === "ROLE_STAFF") {
        role = "Staff"
      } else {
        role = "Supervisor"
      }


      if (role === "Admin") {
        menuItems = [
          <Menu.Item key="/stores">
            <NavLink activeStyle={{
              backgroundColor: '258EA6',
              color: 'red',
              borderBottom: '5px double black'
            }} to="/store">Manage Store</NavLink>
          </Menu.Item>,
          <Menu.Item key="/orders">
            <NavLink activeStyle={{
              backgroundColor: '258EA6',
              color: 'red',
              borderBottom: '5px double black'
            }} to="/orders">Manage Order</NavLink>
          </Menu.Item>,
          <Menu.Item key="/products">
            <NavLink activeStyle={{
              backgroundColor: '258EA6',
              color: 'red',
              borderBottom: '5px double black'
            }} to="/products">Manage Product</NavLink>
          </Menu.Item>,
          <Menu.Item key="/users">
            <NavLink activeStyle={{
              backgroundColor: '258EA6',
              color: 'red',
              borderBottom: '5px double black'
            }} to="/users">Manage User</NavLink>
          </Menu.Item>,
        ];
      }
      else if (role === "Staff") {
        menuItems = [
          <Menu.Item key="/orders">
            <NavLink activeStyle={{
              backgroundColor: '258EA6',
              color: 'red',
              borderBottom: '5px double black'
            }} to="/orders">Manage Order</NavLink>
          </Menu.Item>
        ];
      }
      else if (role === "Supervisor") {
        menuItems = [
          <Menu.Item key="/orders">
            <NavLink activeStyle={{
              backgroundColor: '258EA6',
              color: 'red',
              borderBottom: '5px double black'
            }} to="/orders">Manage Order</NavLink>
          </Menu.Item>,
          <Menu.Item key="/products">
            <NavLink activeStyle={{
              backgroundColor: '258EA6',
              color: 'red',
              borderBottom: '5px double black'
            }} to="/products">Manage Product</NavLink>
          </Menu.Item>

        ];
      }
      else if (role === "Normal") {
        menuItems = [
          <Menu.Item key="/">
            <NavLink activeStyle={{
              backgroundColor: '258EA6',
              color: 'red',
              borderBottom: '5px double black'
            }} exact to="/">Home</NavLink>
          </Menu.Item>
        ];
      }

    }

    else {
      menuItems = [
        <Menu.Item key="/">
          <NavLink activeStyle={{
            backgroundColor: '258EA6',
            color: 'red',
            borderBottom: '5px double black'
          }} exact to="/">Home</NavLink>
        </Menu.Item>,
        <Menu.Item key="/signin">
          <NavLink activeStyle={{
            backgroundColor: '258EA6',
            color: 'red',
            borderBottom: '5px double black'
          }} to="/signin">Signin</NavLink>
        </Menu.Item>,
        <Menu.Item key="/signup">
          <NavLink activeStyle={{
            backgroundColor: '258EA6',
            color: 'red',
            borderBottom: '5px double black'
          }} to="/signup">Signup</NavLink>
        </Menu.Item>
      ];
    }

    return (
      <Header className="app-header">



        <div className="collapse navbar-collapse button-menu">
          <Menu
            className="app-menu"
            mode="horizontal"
            selectedKeys={[this.props.location.pathname]}
            style={{ lineHeight: '64px' }} >
            {menuItems}
          </Menu>
          {
            this.props.currentUser ? (
              <ul className="nav navbar-nav navbar-right">
                <li className="dropdown">
                  <NavLink to="#" className="dropdown-toggle" data-toggle="dropdown">
                    <h6>
                          <img src={`http://localhost/uploads/user-images/${id}/${id}` + '.jpg'} className="img-thumbnail"width="30" height="30" />
                      {name} ({role}) <br />
                    </h6>
                  </NavLink>
                  <ul className="dropdown-menu">
                    <div>
                      <Menu >
                        <Menu.Item key="profile" >
                          <NavLink to={`/user/${username}`}>Profile</NavLink>
                        </Menu.Item>
                        <Menu.Item key="logout" >
                          <div>
                            <NavLink to="/signin" onClick={handleLogout}>Logout</NavLink>
                          </div>
                        </Menu.Item>
                      </Menu>
                    </div>
                  </ul>
                </li>
              </ul>
            ) : null
          }


        </div>
      </Header>
    );
  }

}

function handleLogout(redirectTo = "/signin") {
  logout()
    .then(res => {
      console.log(res);
    }).catch(err => {
      console.log(err);
    })
  localStorage.removeItem(ACCESS_TOKEN);
  localStorage.removeItem('role');
  alert("Log out successfully, please log in to continue");
  this.props.history.push(redirectTo);

}


export default withRouter(AppHeader);