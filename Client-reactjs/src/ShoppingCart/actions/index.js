import * as types from '../constants/ActionType';
import {getAllProduct} from '../../util/APIUtils';

export const actFetchProductsRequest = () => {
    return (dispatch) => {
		///console.log('ok');
        	return getAllProduct().then(response => {
		   dispatch(actFetchProducts(response));
		   //console.log(response)
        });
    }
}


export const actFetchProducts = (products) => {
    return {
        type: types.FETCH_PRODUCTS,
        products
    }
}

export const actionAddToCart = (product, quantity) => {
	return {
		type: types.ADD_TO_CART,
		product: product,
		quantity: quantity
	}
}



export const actionChangeMessage = (message) => {
	return {
		type: types.CHANGE_MESSAGE,
		message
	}
}

export const actionDeleteProductInCart = (product) => {
	return {
		type: types.DELETE_PRODUCT_IN_CART,
		product
	}
}


export const actionUpdateProductInCart = (product, quantity) => {
	return {
		type: types.UPDATE_PRODUCT_IN_CART,
		product,
		quantity
	}
}