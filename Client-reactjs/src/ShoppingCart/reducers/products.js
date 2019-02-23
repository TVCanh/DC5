
import * as type from './../constants/ActionType';
var initialState = [];

const products = (state = initialState, action)=>{
	switch(action.type){
		case type.FETCH_PRODUCTS:
			state = action.products;
			//console.log(state);
			return [...state]
		default : return [...state]
	}
}
export default products;