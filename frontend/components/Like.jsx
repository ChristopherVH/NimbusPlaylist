var React = require('react');
var SingleUserStore = require("../stores/SingleUserStore.js");
var LikeActions = require("../actions/LikeActions.js");
var UserActions = require("../actions/UserActions.js");
var Modal = require('react-modal');

var modalStyle = {
    width: '300px'
};

var appElement = document.getElementById('root');

const customStyles = {
  overlay : {
    position          : 'fixed',
    top               : 0,
    left              : 0,
    right             : 0,
    bottom            : 0,
    height            : "100%",
    width             : "100%",
    backgroundColor   : 'rgba(0, 0, 0, 0.7)',
    zIndex            : 10
  },
  content : {
    position              : 'fixed',
    top                   : '50%',
    left                  : '50%',
    right                 : 'auto',
    bottom                : 'auto',
    marginRight           : 0,
    background            : "rgba(50,41,41,0.8)",
    transform             : 'translate(-50%, -50%)',
    padding               : 0,
    border                : 0,
    zIndex               : 11
  }
};

var Like = React.createClass({
  getInitialState: function(){
    return({
      liked: false,
      modalIsOpen: false
    })
  },
  componentWillMount: function(){
    if (SingleUserStore.currentUser().username !== undefined && SingleUserStore.currentUser().liked_songs_hash[this.props.songId]){
      this.setState({liked: true})
    }
  },
  toggleLike: function(event){
    event.preventDefault();
    if (!(this.state.liked)){
      LikeActions.createLike(SingleUserStore.currentUser().id, this.props.songId)
      this.setState({liked: true})
    }else{
      LikeActions.deleteLike(SingleUserStore.currentUser().id, this.props.songId)
      this.setState({liked: false})
    }
    UserActions.fetchUserInfo(this.props.userId)
  },
  openModal: function() {
    this.setState({modalIsOpen: true});
  },
  closeModal: function() {
    this.setState({modalIsOpen: false});
  },
  display: function(){
    if (SingleUserStore.currentUser().username === undefined){
      return [<button className="not-like-button" key={1} onClick={this.openModal}></button>,
        <Modal
          isOpen={this.state.modalIsOpen}
          onRequestClose={this.closeModal}
          className="Modal__Bootstrap modal-dialog"
          style={customStyles}>

          <div className="modal-content">
            <div className="modal-body">
              You must be signed in to like songs.
            </div>
            <button type="button" className="btn btn-default button error-modal-button" onClick={this.closeModal}>Close</button>
          </div>
        </Modal>];
    }
    else if (this.state.liked){
      return  <input className="like-button" type="button" onClick={this.toggleLike}/>;
    }else {
      return  <input className="not-like-button" type="button" onClick={this.toggleLike}/>;
    }
  },
  render: function(){
    return (
      <div>{this.display()}</div>
    )
  }
})

module.exports = Like;
