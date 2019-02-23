import React, { Component } from 'react';
import './App.css';
import {
  Route,
  withRouter,
  Switch
} from 'react-router-dom';

import { getCurrentUser } from '../util/APIUtils';
import { ACCESS_TOKEN } from '../constants';
import './App.css';
import Signin from '../components/Signin';
import Signup from '../components/Signup';
import Profile from '../profile/Profile';
import AppHeader from '../common/AppHeader';
import NotFound from '../common/NotFound';
import LoadingIndicator from '../common/LoadingIndicator';
import Home from '../components/Home';
import ProductListPage from '../Pages/Product/ProductListPage';
import ProductActionPage from '../Pages/Product/ProductActionPage';
import UserListPage from '../Pages/User/UserListPage';
import UserActionPage from '../Pages/User/UserActionPage';
import { logout } from '../util/APIUtils';
import { Layout, notification } from 'antd';
import Confirm from '../components/Confirm';
import { exact } from 'prop-types';



class routes extends Component {
    constructor(props) {
      super(props);
      this.state = {
        currentUser: null,
        isAuthenticated: false,
        isLoading: false
      }
      this.handleLogout = this.handleLogout.bind(this);
      this.loadCurrentUser = this.loadCurrentUser.bind(this);
      this.handleLogin = this.handleLogin.bind(this);
  
      notification.config({
        placement: 'topRight',
        top: 70,
        duration: 3,
      });
    }
  
    loadCurrentUser() {
      this.setState({
        isLoading: true
      });
      getCurrentUser()
        .then(response => {
          this.setState({
            currentUser: response,
            isAuthenticated: true,
            isLoading: false
          });
        }).catch(error => {
          this.setState({
            isLoading: false
          });
        });
    }
  
    componentDidMount() {
      this.loadCurrentUser();
    }
  
    handleLogout(redirectTo = "/signin") {
      logout()
        .then(res => {
          console.log(res);
        }).catch(err => {
          console.log(err);
        })
      localStorage.removeItem(ACCESS_TOKEN);
  
  
      this.setState({
        currentUser: null,
        isAuthenticated: false
      });
  
      this.props.history.push(redirectTo);
      alert("Log out successfully, please log in to continue");
    }
  
    handleLogin() {
      this.loadCurrentUser();
      this.props.history.push("/");
    }
  
    render() {
      if (this.state.isLoading) {
        return <LoadingIndicator />
      }
      const reoutes = [
        {
          path: '/',
          exact: true,

        }
      ];
    
    }
   
}
export default routes;

