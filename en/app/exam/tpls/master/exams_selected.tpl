				<table class="table table-hover">
					<tr>
						<td>
							<b>General questions</b>
						</td>
					</tr>
					{x2;tree:$questions,question,qid}
					<tr id="selectedq_{x2;v:question['questionid']}">
						<td>
							<table>
								<tr>
									<td width="80"><label class="checkbox-inline">{x2;if:!$show}<input type="checkbox" del="selectedq_{x2;v:question['questionid']}" rel="1" value="{x2;v:question['questionid']}" onclick="javascript:doselectquestions(this,'iselectquestions_{x2;v:question['questiontype']}','ialreadyselectnumber_{x2;v:question['questiontype']}');" checked />{x2;endif}Questions {x2;v:qid}</label></td>
									<td>&nbsp;</td>
								</tr>
								{x2;if:v:question['questionknowsid']}
								<tr>
									<td>Knowledge point：</td>
									<td>{x2;tree:v:question['questionknowsid'],know,kid}&nbsp;{x2;v:know['knows']}{x2;endtree}&nbsp;</td>
								</tr>
								{x2;endif}
								<tr>
									<td>Title：</td>
									<td>{x2;eval: echo strip_tags(html_entity_decode(v:question['question']))}</td>
								</tr>
								<tr>
									<td>Options：</td>
									<td>
									{x2;realhtml:v:question['questionselect']}
									</td>
								</tr>
								<tr>
									<td>Key：</td>
									<td>{x2;realhtml:v:question['questionanswer']}</td>
								</tr>
								<tr>
									<td>Analysis：</td>
									<td>{x2;realhtml:v:question['questiondescribe']}&nbsp;</td>
								</tr>
								<!-- <tr>
									<td>难度：</td>
									<td>{x2;if:v:question['questionlevel']==1}易{x2;elseif:v:question['questionlevel']==2}中{x2;elseif:v:question['questionlevel']==3}难{x2;endif}&nbsp;</td>
								</tr> -->
							</table>
						</td>
					</tr>
					{x2;endtree}
					<tr>
						<td>
							<b>Title questions</b>
						</td>
					</tr>
					{x2;tree:$rowsquestions,rowsquestion,qid}
					<tr id="selectedqr_{x2;v:rowsquestion['qrid']}">
						<td>
							<div>
								<table>
									<tr>
									<td width="80"><label class="checkbox inline">{x2;if:!$show}<input type="checkbox" del="selectedqr_{x2;v:rowsquestion['qrid']}" rel="{x2;v:rowsquestion['qrnumber']}" value="{x2;v:rowsquestion['qrid']}" onclick="javascript:doselectquestions(this,'iselectrowsquestions_{x2;v:rowsquestion['qrtype']}','ialreadyselectnumber_{x2;v:rowsquestion['qrtype']}');" checked />{x2;endif}<b>Questions {x2;v:qid}</b></label></td>
									<td>&nbsp;</td>
									</tr>
									<tr>
									<td>Knowledge point：</td>
									<td>{x2;tree:v:rowsquestion['qrknowsid'],know,kid}&nbsp;{x2;v:know['knows']}{x2;endtree}&nbsp;</td>
									</tr>
									<tr>
									<td>Questions：</td>
									<td>{x2;realhtml:v:rowsquestion['qrquestion']}</td>
									</tr>
								</table>
								{x2;tree:v:rowsquestion['data'],question,cqid}
								<table class="searchContent" width="96%">
									<tr>
										<td width="80">Questions {x2;v:cqid}</td>
										<td>&nbsp;</td>
									</tr>
									<tr>
										<td>Title：</td>
										<td>{x2;eval: echo strip_tags(html_entity_decode(v:question['question']))}</td>
									</tr>
									<tr>
										<td>Options：</td>
										<td>
										{x2;realhtml:v:question['questionselect']}
										</td>
									</tr>
									<tr>
										<td>Key：</td>
										<td>{x2;realhtml:v:question['questionanswer']}</td>
									</tr>
									<tr>
										<td>Analysis：</td>
										<td>{x2;realhtml:v:question['questiondescribe']}&nbsp;</td>
									</tr>
									<!-- <tr style="display:none;">
										<td>难度：</td>
										<td>{x2;if:v:question['questionlevel']==2}中{x2;elseif:v:question['questionlevel']==3}难{x2;elseif:v:question['questionlevel']==1}易{x2;endif}&nbsp;</td>
									</tr> -->
								</table>
								{x2;endtree}
							</div>
						</td>
					</tr>
					{x2;endtree}
				</table>