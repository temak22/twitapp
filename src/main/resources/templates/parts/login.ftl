<#macro login path>
    <form action="${path}" method="post">
        <p><label> User Name : <input type="text" name="username"/> </label></p>
        <p><label> Password: <input type="password" name="password"/> </label></p>
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <p><input type="submit" value="Sign In"/></p>
    </form>
</#macro>

<#macro logout>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Sign Out</button>
    </form>
</#macro>