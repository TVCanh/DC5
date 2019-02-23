import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './app/App';
import * as serviceWorker from './serviceWorker';
import {BrowserRouter as Router} from 'react-router-dom';
import {createStore, applyMiddleware} from 'redux';
import appReducers from './ShoppingCart/reducers/index';
import {Provider} from	'react-redux';
import thunk from 'redux-thunk'
	const store = createStore(
		appReducers,
		window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__(),
		applyMiddleware(thunk)
);

ReactDOM.render(
	<Provider store={store}>
	<Router>
		<App />
	</Router>
	</Provider>,
	 document.getElementById('root'));

serviceWorker.unregister();
