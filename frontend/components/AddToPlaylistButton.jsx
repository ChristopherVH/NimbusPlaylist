var React = require('react');
var PlaylistActions = require("../actions/PlaylistActions.js");
var UserActions = require("../actions/UserActions.js");

var playlistSongAdd = React.createClass({
  getInitialState: function(){
    return({
      added: undefined
    });
  },
  componentWillMount: function(){
    if (this.props.playlist.songIndex[this.props.songId]){
      this.setState({added: true});
    }else{
      this.setState({added: false});
    }
  },
  deleteSongFromPlaylist: function(){
    var playId = this.props.playlist.id;
    var songId = this.props.songId;
    if (this.props.playlist.songs.length === 1){
      PlaylistActions.deletePlaylist(playId);
    }
    this.props.playlist.songs.forEach(function(playlistsong){
      if (songId === playlistsong.song.id){
        PlaylistActions.deleteSongFromPlaylist(playId, playlistsong.id);
      }
    });
  },
  toggleAdd: function(event){
    event.preventDefault();
    if (!(this.state.added)){
      this.setState({added: true});
      PlaylistActions.addSongToPlaylist(this.props.songId,
        this.props.playlist.id,
        this.props.playlist.songs[this.props.playlist.songs.length - 1].ord + 1);
    }else{
      this.deleteSongFromPlaylist();
      this.setState({added: false});
    }
    PlaylistActions.fetchPlaylist(this.props.playlist.id);
  },
  display: function(){
    if (this.state.added){
      return  <input type="button" onClick={this.toggleAdd} value="Added"/>;
    }else {
      return  <input type="button" onClick={this.toggleAdd} value="Add Song"/>;
    }
  },
  render: function(){
    return (
      <div>{this.display()}</div>
    );
  }
});

module.exports = playlistSongAdd;
