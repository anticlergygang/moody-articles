@ArticleForm = React.createClass
	getInitialState: ->
		articleURL: ''
	handleValueChange: (e) ->
		valueName = e.target.name
		@setState 
			"#{ valueName }": e.target.value
			"status": "process"
	valid: ->
		@state.articleURL
	handleSubmit: (e) ->
		e.preventDefault()
		$.post '', { article: @state }, (data) =>
			@props.handleNewArticle data
			@setState @getInitialState()
		, 'JSON'
	render: ->
		React.DOM.form
			className: 'form-inline'
			onSubmit: @handleSubmit
			React.DOM.div
				className: 'form-group'
				React.DOM.input
					type: 'text'
					className: 'form-control'
					placeholder: 'Enter an articles URL to get some mood music!'
					name: 'articleURL'
					value: @state.articleURL
					onChange: @handleValueChange
			React.DOM.button
				type: 'submit'
				className: 'btn btn-primary'
				disabled: !@valid()
				'Find mood music!'
