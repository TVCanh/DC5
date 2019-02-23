import React, { Component } from 'react';
import { getUserProfile } from '../util/APIUtils';
import LoadingIndicator from '../common/LoadingIndicator';
import './Profile.css';
import NotFound from '../common/NotFound';
import ServerError from '../common/ServerError';
import { Link } from 'react-router-dom'

class Profile extends Component {
    constructor(props) {
        super(props);
        this.state = {
            user: null,
            isLoading: false,
            image: null
        }
        this.loadUserProfile = this.loadUserProfile.bind(this);
    }
    handleFile = (e) => {
        console.log(e.target.files[0]);
        let file = e.target.files[0]
        this.setState({
            image: file
        })
    }
    onChange = (e) => {
        var target = e.target;
        var name = target.name;
        var value = target.value;
        this.setState({
            [name]: value
        })
    }
    onSave = (e) => {
        e.preventDefault();
        let file = this.state.image
        if(file===null){
            alert("You don't choose a File")
        }else{
            let formData = new FormData();    //formdata object
            formData.append('file', file);
            // formData.append('id', res.id);
            fetch(`http://localhost:8080/api/auth/${this.state.user.id}/userimage`, {
                method: 'POST',
                body: formData,
                //headers: { 'content-type': 'multipart/form-data' }
            })
                .then(response => response.json())
                .catch(error => console.error('Error:', error))
                .then(response => console.log('Success:', JSON.stringify(response)));
            alert("Updated Avatar! ");
            this.props.history.goBack();
        }
        }
       

    loadUserProfile(username) {
        this.setState({
            isLoading: true
        });

        getUserProfile(username)
            .then(response => {
                this.setState({
                    user: response,
                    isLoading: false
                });
            }).catch(error => {
                if (error.status === 404) {
                    this.setState({
                        notFound: true,
                        isLoading: false
                    });
                } else {
                    this.setState({
                        serverError: true,
                        isLoading: false
                    });
                }
            });

    }

    componentDidMount() {
        const username = this.props.match.params.username;
        this.loadUserProfile(username);
        //  
        console.log('mount');
        console.log(this.state);
    }

    componentDidUpdate(nextProps) {
        if (this.props.match.params.username !== nextProps.match.params.username) {
            this.loadUserProfile(nextProps.match.params.username);
        }
    }

    render() {
        var { imageava } = this.state;
        var role = localStorage.getItem('role');
        console.log('render');

        console.log(this.state);
        if (this.state.isLoading) {
            return <LoadingIndicator />;
        }

        if (this.state.notFound) {
            return <NotFound />;
        }

        if (this.state.serverError) {
            return <ServerError />;
        }

        return (

            <div className="col-lg-4 col-md-6 mt-100">
                <div className="profile">
                    {
                        this.state.user ? (
                            <div className="user-profile">
                                <div className="user-details">
                                    <div className="col-xs-6 col-sm-6 col-md-6 col-lg-6 ">
                                        <div >
                                            <img src={`http://localhost/uploads/user-images/${this.state.user.id}/${this.state.user.id}` + '.jpg'} className="img-circle"/>
                                        </div>
                                    </div>
                                    <div className="user-summary">
                                        <div className="full-name">Fullname : {this.state.user.name}</div>
                                        <div className="username">Username: {this.state.user.username}</div>
                                        <div className="username">Role: { Role(role) } </div>

                                    </div>
                                </div>
                            </div>
                        ) : null
                    }
                    <div><Link to="/changepassword"><button type="button" className="btn btn-info">Change Password</button> </Link> <br/> <br/>
                        <div className="ml-0">
                            <form onSubmit={this.onSave} >

                                <div className="form-group">
                                    <label><b>uploads Avatar</b></label>
                                    <input
                                        type="file"
                                        className="form-control"
                                        name="image"
                                        value={imageava}
                                        onChange={this.handleFile}
                                    />
                                </div>
                                <button type="submit" className="btn btn-primary mr-20">Save</button>
                                {
                                    role==='ROLE_NORMAL' ?(
                                        <Link to="/" className="btn btn-danger mr-20">Back</Link>
                                    ):  <Link to="/products" className="btn btn-danger mr-20">Back</Link>
                                }
                               
                            </form>
                        </div>
                    </div>
                </div>



            </div>
        );
    }

    
}

function Role(role) {
    // if(role === 'ROLE_ADMIN'){
    //     role = 'ADMIN'
    // }
    switch(role)
        {
            case 'ROLE_ADMIN' : {
                return  'ADMIN' ;
                break ;
            
            }
            case 'ROLE_SUPERVISOR' : {
                return  'SUPERVISOR'
                break;
            }
            case 'ROLE_STAFF':{
                return  'STAFF'
                break
            }
            default : {
                return  'NORMAL'
            }
        }
}

export default Profile;