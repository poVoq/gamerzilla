<div class="generic-content-wrapper">
	<div class="section-title-wrapper">
		<h2>GAMES</h2>
	</div>
	<div class="section-subtitle-wrapper">
		<h3>{{if $title}}{{$title}}{{else}}Order{{/if}}</h3>
	</div>
	<div class="section-content-wrapper">
			<table class="w-100">
				<tr>
					<th width=70%>Name</th>
					<th width=15%>Earned</th>
					<th width=15%>Total</th>
				</tr>
				{{foreach $items as $item}}
				<tr>
					<td><a href="{{$item.url}}"><img src="{{$item.url}}/show" alt="[{{$item.name}}]"> {{$item.name}}</a></td>
					<td>{{$item.earned}}</td>
					<td>{{$item.total}}</td>
				</tr>
				{{/foreach}}
			</table>
	</div>
	<div class="section-content-wrapper">&nbsp;
		{{if $page_prev == "0"}}<span style="float: left"><a href="/gamerzilla/{{$channel}}">&lt;&lt;&lt;</a></span>{{/if}}{{if $page_prev}}<span style="float: left"><a href="/gamerzilla/{{$channel}}/{{$page_prev}}">&lt;&lt;&lt;</a></span>{{/if}}
		{{if $page_next}}<span style="float: right"><a href="/gamerzilla/{{$channel}}/{{$page_next}}">&gt;&gt;&gt;</a></span>{{/if}}
	</div>
	{{if $privacy}}<div class="section-content-wrapper" style="text-align: center"><a href="/gamerzilla/{{$channel}}/.privacy">Privacy</a></div>{{/if}}
</div>
