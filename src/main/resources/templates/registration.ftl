<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    Add new user
    <hr>
    <p style="color: red">${message!' '}</p>
    <@l.login "/registration" />
    <a href="/login">Login</a>
</@c.page>