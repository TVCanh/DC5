import React, { Component } from 'react';
import './App.css';
import {
  Route,
  withRouter,
  Switch
} from 'react-router-dom';

import { getCurrentUser } from '../util/APIUtils';
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
import PromotePage from '../Pages/User/PromotePage';
import DisbandPage from '../Pages/User/DisbandPage';
import { notification } from 'antd';
import Confirm from '../components/Confirm';
import Forgot from '../components/Forgot';
import ResetPassword from '../components/ResetPassword';
import checkout from '../ShoppingCart/CartComponents/checkout';
import DetailProduct from '../ShoppingCart/CartComponents/DetailProduct';
import OrderListPage from '../Pages/Order/OrderListPage';
import OrderDetailPage from '../Pages/Order/OrderDetailPage';
import OrderInfo from '../Pages/Order/OrderInfo'
import ChangePassword from '../profile/ChangePassword';
import StoreListPage from '../Pages/Store/StoreListPage';

const Child = ({ match }) => console.log(match.params.token) || (
  <div>

  </div>
)

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      currentUser: null,
      isAuthenticated: false,
      isLoading: false
    }
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
        console.log(response);
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

  handleLogin() {
    this.loadCurrentUser();
    console.log(this.state);

    if (localStorage.getItem('role') === "ROLE_NORMAL") {
      this.props.history.push("/");
    } else if (localStorage.getItem('role') === "ROLE_STAFF" || localStorage.getItem('role') === "ROLE_SUPERVISOR") {
      this.props.history.push("/orders");
    }
    else {
      this.props.history.push("/products")
    }
  }

  render() {
    if (this.state.isLoading) {
      return <LoadingIndicator />
    }
    return (
      <div>
        <div>
          <AppHeader isAuthenticated={this.state.isAuthenticated}
            currentUser={this.state.currentUser}
            onLogout={this.handleLogout} />
        </div>

        <main id="mainContainer">
          <div className="container-fluid">
            <Switch>

              <Route path="/store" component={StoreListPage} />
              <Route path="/changepassword" component={ChangePassword} />
              <Route path="/orderinfo" component={OrderInfo} />
              <Route path="/order/:idOrder/detail" component={OrderDetailPage} />
              <Route path="/orders" component={OrderListPage} />
              <Route path="/checkout" component={checkout} />
              <Route path="/forgot" component={Forgot} />
              <Route path="/confirm/:confirmToken" exact component={Confirm} />
              <Route path="/reset/:resetToken" exact component={ResetPassword} />
              <Route path="/" exact component={Home} />
              <Route path="/users" component={UserListPage} />
              <Route path="/user/add" component={UserActionPage} />
              <Route path="/user/:id/promote" component={PromotePage} />
              <Route path="/user/:id/disband" component={DisbandPage} />
              <Route path="/detail/:idProduct" component={DetailProduct} />
              <Route path="/products" component={ProductListPage} />
              <Route path="/product/add" component={ProductActionPage} />
              <Route path="/product/:id/edit" component={ProductActionPage} />
              <Route path="/signup" component={Signup}></Route>
              <Route path="/signin"
                render={(props) => <Signin onLogin={this.handleLogin} {...props} />}></Route>
              <Route path="/user/:username"
                render={(props) => <Profile isAuthenticated={this.state.isAuthenticated} currentUser={this.state.currentUser} {...props} />}>
              </Route>
              <Route component={NotFound}></Route>
            </Switch>
          </div>
        </main>
      </div>
    );
  }
}

export default withRouter(App);
