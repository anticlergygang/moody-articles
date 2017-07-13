@Articles = React.createClass
	getInitialState: ->
		articles: @props.data
	getDefaultProps: ->
		articles: []
	render: ->
		React.DOM.div
			className: 'articles'
			React.DOM.h1
				className: 'title'
				'Articles'
			React.DOM.table
				className: 'table table-bordered'
				React.DOM.thead null
					React.DOM.th null, "Article URL"
					React.DOM.th null, "Status"
					React.DOM.th null, "Mood Music URL"
				React.DOM.tbody null,
					for article in @state.articles
						React.createElement Article, key: article.id, article: article