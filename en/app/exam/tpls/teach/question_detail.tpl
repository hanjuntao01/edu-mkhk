				<table class="table table-hover">
					{x2;if:$question['questionknowsid']}
					<tr>
			          <td width="100">Subject：</td>
			          <td>{x2;$subject['subject']}&nbsp;</td>
			        </tr>
			        <tr>
			          <td>Chapter：</td>
			          <td>{x2;tree:$sections,section,sid}{x2;v:section['section']}{x2;endtree}&nbsp;&nbsp;</td>
			        </tr>
			        <tr>
			          <td>Knowledge point：</td>
			          <td>{x2;tree:$question['questionknowsid'],know,kid}{x2;v:know['knows']}{x2;endtree}&nbsp;&nbsp;</td>
			        </tr>
			        {x2;endif}
			        <tr>
			          <td width="100">Title：</td>
			          <td>{x2;realhtml:$question['question']}</td>
			        </tr>
			        <tr>
			        	<td>Items：</td>
			        	<td>
			          	{x2;realhtml:$question['questionselect']}
						</td>
			        </tr>
			        <tr>
			          <td>Key：</td>
			          <td>{x2;realhtml:$question['questionanswer']}</td>
			        </tr>
			        <tr>
			          <td>Analysis：</td>
			          <td>{x2;realhtml:$question['questiondescribe']}&nbsp;</td>
			        </tr>
			        <!-- <tr>
			          <td>难度：</td>
			          <td>{x2;if:$question['questionlevel']==1}易{x2;elseif:$question['questionlevel']==2}中{x2;elseif:$question['questionlevel']==3}难{x2;endif}&nbsp;</td>
			        </tr> -->
				</table>