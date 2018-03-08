<hTML>
<head>
    <title>
        ToDO
    </title>
    <asset:stylesheet src="ToDo.css"/>
    <asset:stylesheet src="bootstrap.css"/>
</head>

<body>
<div class="nav" class="container">
    <div class="top">
        ToDo Application
    </br>
        <a href="CompletedTask" class="btn btn-warning pull-right  bottom-right"> View Completed Task</a>
    </br>
    </div>
</div>

<div class="content table-view">
    <g:form controller="home" action="save">
        <lable>Please add the title of the Task</lable>
        </br>
        <g:textField name="Title" class="form-control " placeholder="Title"/>
        <button type="submit" class="btn btn-green">Add to List</button>
    </g:form>
    <g:if test="${tasks}">
        <table class="table table-striped">
            <tr>
                <td>Title</td>
                <td>Action</td>
            </tr>
            <g:each in="${tasks}" var="show">
                <tr>
                %{--Alankar Pokhrel Helped me with this couple lines of code--}%
                    <g:if test="${show.dateCompleted == null}">
                        <td>${show.title}</td>
                        <td>
                        <g:link controller="home" action="markCompleted" class="btn btn btn-primary"
                                id="${show.id}">Mark Completed</g:link>
                    </g:if>
                </tr>
            </g:each>
        </table>
    </g:if>
</div>
</div>
</body>
</hTML>