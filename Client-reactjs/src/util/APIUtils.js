import { API_BASE_URL, API_ADMIN_URL, ACCESS_TOKEN } from '../constants';


export const request = (options) => {
    const headers = new Headers({
        'Content-Type': 'application/json',
    })
    debugger
    if (localStorage.getItem(ACCESS_TOKEN)) {
        headers.append('Authorization', 'Bearer ' + localStorage.getItem(ACCESS_TOKEN))
    }

    const defaults = { headers: headers };
    options = Object.assign({}, defaults, options);
    return fetch(options.url, options)
        .then(response =>
            response.json().then(json => {
                if (!response.ok) {
                    return Promise.reject(json);
                }
                return json;
            })

        );
};
export function login(loginRequest) {
    return request({
        url: API_BASE_URL + "/auth/signin",
        method: 'POST',
        body: JSON.stringify(loginRequest)
    });
}

export function logout(logoutRequest) {
    if (!localStorage.getItem(ACCESS_TOKEN)) {
        return Promise.reject("No access token set.");
    }
    return request({
        url: API_BASE_URL + "/auth/signout",
        method: 'POST',
        body: null
    });
}

export function signup(signupRequest) {
    return request({
        url: API_BASE_URL + "/auth/signup",
        method: 'POST',
        body: JSON.stringify(signupRequest)
    });
}

export function confirm(token) {
    return request({
        url: API_BASE_URL + `/auth/confirm?token=${token}`,
        method: 'GET',
        body: null
    });
}

export function forgot(emailRequest){
    return request({
        url: API_BASE_URL + "/auth/forgot",
        method: 'Post',
        body: JSON.stringify(emailRequest)
    });
}

export function reset(resetRequest,token){
    return request({
        url: API_BASE_URL + `/auth/reset?token=${token}`,
        method : 'POST',
       body: JSON.stringify(resetRequest) 
    })
}

export function checkUsernameAvailability(username) {
    return request({
        url: API_BASE_URL + "/auth/user/checkUsernameAvailability?username=" + username,
        method: 'GET'
    });
}

export function checkEmailAvailability(email) {
    return request({
        url: API_BASE_URL + "/auth/user/checkEmailAvailability?email=" + email,
        method: 'GET'
    });
}


export function getCurrentUser() {
    if (!localStorage.getItem(ACCESS_TOKEN)) {
        return Promise.reject("No access token set.");
    }
    return request({
        url: API_BASE_URL + "/auth/user/me",
        method: 'GET'
    });
}

export function getUserProfile(username) {
    return request({
        url: API_BASE_URL + "/auth/users/" + username,
        method: 'GET'
    });
}

export function getAllProduct() {
    return request({
        url: API_BASE_URL + "/auth/products",
        method: 'GET'
    });
}
export function getOneProduct(idRequest) {
    return request({
        url: API_BASE_URL + `/auth/products/${idRequest}`,
        method: 'GET'
    });
}

export function createProduct(productRequest) {
    return request({
        url: API_ADMIN_URL + "/create/product",
        method: 'POST',
        body: JSON.stringify(productRequest)
    });
}
export function deleteProduct(idRequest) {
    return request({
        url: API_ADMIN_URL + `/delete/product/${idRequest}`,
        method: 'DELETE',
        body: null
    });
}

export function updateProduct(idRequest, productRequest) {
    return request({
        url: API_ADMIN_URL + `/update/product/${idRequest}`,
        method: 'PUT',
        body: JSON.stringify(productRequest)
    });
}

export function getAllUser() {
    if (!localStorage.getItem(ACCESS_TOKEN)) {
        return Promise.reject("No access token set.");
    }
    return request({
        url: API_ADMIN_URL + "/users",
        method: 'GET'
    });
}

export function deleteUser(idRequest) {
    if (!localStorage.getItem(ACCESS_TOKEN)) {
        return Promise.reject("No access token set.");
    }
    return request({
        url: API_ADMIN_URL + `/delete/user/${idRequest}`,
        method: 'DELETE',
        body: null
    });
}

export function updateUser(idRequest, userRequest) {
    if (!localStorage.getItem(ACCESS_TOKEN)) {
        return Promise.reject("No access token set.");
    }
    return request({
        url: API_ADMIN_URL + `/update/product/${idRequest}`,
        method: 'PUT',
        body: JSON.stringify(userRequest)
    });
}

export function getOneUser(idRequest) {
    if (!localStorage.getItem(ACCESS_TOKEN)) {
        return Promise.reject("No access token set.");
    }
    return request({
        url: API_ADMIN_URL + `/users/${idRequest}`,
        method: 'GET'
    });
}

export function createUser(userRequest) {
    return request({
        url: API_ADMIN_URL + "/create/user",
        method: 'POST',
        body: JSON.stringify(userRequest)
    });
}

export function promote(roleRequest, idRequest){
    if (!localStorage.getItem(ACCESS_TOKEN)){
        return Promise.reject("No access token set.");
    }
    return request({
        url: API_ADMIN_URL + `/promote/${idRequest}`,
        method: 'POST',
        body: JSON.stringify(roleRequest)
    })
}

export function disband(roleRequest, idRequest){
    if (!localStorage.getItem(ACCESS_TOKEN)){
        return Promise.reject("No access token set.");
    }
    return request({
        url: API_ADMIN_URL + `/disband/${idRequest}`,
        method: 'POST',
        body: JSON.stringify(roleRequest)
    })
}

export function createOrder(infoRequest){
    return request({
        url: API_BASE_URL + "/auth/order/create",
        method:'POST',
        body: JSON.stringify(infoRequest)
    })
}

export function getAllOrder(){
    if(!localStorage.getItem(ACCESS_TOKEN)){
        return Promise.reject("No access token set");
    }
    return request({
        url: API_BASE_URL + "/auth/order/all",
        method: 'GET',
        body: null
    })
}

export function getOneOrder(idRequest){
    if(!localStorage.getItem(ACCESS_TOKEN)){
        return Promise.reject("No access token set");
    }
    return request({
        url: API_BASE_URL + `/auth/order/${idRequest}`,
        method: 'GET',
        body: null
    })
}

export function deleteOrder(idRequest){
    if(!localStorage.getItem(ACCESS_TOKEN)){
        return Promise.reject("No access token set");
    }
    return request({
        url: API_BASE_URL + `/auth/order/delete/${idRequest}`,
        method: 'DELETE',
        body: null
    })
}

export function updatePassword(passwordRequest){
    if(!localStorage.getItem(ACCESS_TOKEN)){
        return Promise.reject("No access token set");
    }
    return request({
        url: API_BASE_URL + "/auth/changpassword",
        method: 'POST',
        body: JSON.stringify(passwordRequest)
    })
}

export function getImage(id){
    if(!localStorage.getItem(ACCESS_TOKEN)){
        return Promise.reject("No access token set");
    }
    return request({
        url: API_BASE_URL + `/auth/image/${id}`,
        method: 'GET'
    })
}
export function updateQuantity(id,quantity){
    return request({
        url: API_BASE_URL + `/auth/updatequantity/${id}`,
        method:'PUT',
        body: JSON.stringify(quantity)
    })
}