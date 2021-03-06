var React = require('react');
var SongStore = require("../stores/SongStore.js");
var ApiUtil = require("../util/apiUtil.js");
var Collection = require("./Collection.jsx");

var Greeting = React.createClass({
  render: function(){
    return(
      <div>
        <h2 className="fade-in greeting-text"> Nimbus Playlist </h2>
        <h5 className="fade-in greeting-text-under">A SOUND DISCOVERY PLATFORM</h5>
        <div className="greeting-page">
          <div className="greeting-vid">
            <div className="move-up">
              <video autoPlay loop>
                <source src="http://mazwai.com/system/posts/videos/000/000/005/original/marc_lorenz--sky_cloudy_time-lapse.mp4" type="video/mp4"/>
              </video>
            </div>
          </div>
          <div className="collection-container">
            <Collection/>
          </div>
        </div>
      </div>
    );
  }
});

module.exports = Greeting;
