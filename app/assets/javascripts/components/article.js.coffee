@Article = React.createClass
	render: ->
		React.DOM.tr null,
			React.DOM.td null, @props.article.articleURL
			React.DOM.td null, @props.article.status
			React.DOM.td null, @props.article.moodMusicURL