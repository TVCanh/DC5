
import * as Message from '../constants/Message';
import * as Types from '../constants/ActionType';
//var data = JSON.parse(localStorage.getItem('CART'));
var initialState = Message.MSG_WELCOME;
		
const message = (state = initialState, action)=>{
	//var {product,quantity} = action;
	//var index =-1;
	switch(action.type){
		case Types.CHANGE_MESSAGE:
			return action.message;
		default : return [...state]
	}


}
export default message;