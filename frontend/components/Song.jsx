var React = require('react');
var SongStore = require("../stores/SongStore.js");
var ApiUtil = require("../util/apiUtil.js");
var Like = require("./Like.jsx");
var PlaylistModal = require("./PlaylistModal.jsx");
var NewPlaylistModal = require("./NewPlaylistModal.jsx");
var WaveSurfer = require("./WaveSurfer.jsx");

var Song = React.createClass({
  getInitialState: function(){
    return({
      song: this.props.song
    })
  },
  singleSongRedirect: function(){
    window.location = '/#/songs/' + this.props.song.id
  },
  componentWillReceiveProps: function(newProps){
    this.setState({song: newProps.song});
  },
  render: function(){
    return(
      <div className="song-container">
        <div className="feed-song-info">
          <div className="feed-song-title">
            {this.state.song.title}
          </div>
          <div className="feed-song-artist">
            Artist: {this.state.song.artist}
          </div>
        </div>
        <br/>
        <div className="song-thumbnail"><img src={this.state.song.image_url} onDoubleClick={this.singleSongRedirect} ></img></div>
        <br/>
        <div className="audio-actions">
          <Like songId={this.state.song.id} userId={this.props.userId} />

          <NewPlaylistModal songId={this.state.song.id} userId={this.props.userId}/>
          <PlaylistModal songId={this.state.song.id}/>
          <br/>
          <audio controls>
            <source src={this.state.song.audio_url} type="audio/mpeg"></source>
          </audio>
        </div>
        <WaveSurfer track={this.state.song}/>
      </div>
    );
  }
})
// numbLikes={this.state.song.likers.length}

module.exports = Song;
