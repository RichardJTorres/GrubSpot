<div class="row">
    <div class="col-md-12">
        <table class="table table-condensed">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Location</th>
                    <th>Phone</th>
                    <th>Tags</th>
                </tr>
            </thead>
            <tbody>
            <g:each in="${eateryList}" var="eateryInstance">
                <tr>
                    <td><g:remoteLink onSuccess="showPane()" action="show" id="${eateryInstance.id}" update="panel-show" >${eateryInstance.name}</g:remoteLink></td>
                    <td>${eateryInstance.location}</td>
                    <td>${eateryInstance.phone}</td>
                    <td>
                        <g:each in="${eateryInstance.tags}" var="t">
                            ${t.tagName} &nbsp
                        </g:each>
                    </td>
                    <td><g:remoteLink action="edit" id="${eateryInstance.id}" update="panel-form"><span class="glyphicon glyphicon-pencil"></span></g:remoteLink>
                        <g:remoteLink action="delete" id="${eateryInstance.id}" update="panel-list" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" ><span class="glyphicon glyphicon-trash"></span></g:remoteLink>
                    </td>
                </tr>
            </g:each>
            </tbody>
        </table>
    </div>
</div>
