<#import "parts/common.ftl" as c>
<#import "parts/login.ftl" as l>

<@c.page>
    <@l.logout/>
    <br>
    <div>
        <form method="post">
            <input type="text" name="text" placeholder="Message">
            <input type="text" name="tag" placeholder="Tag">
            <input type="hidden" name="_csrf" value="${_csrf.token}">
            <button type="submit">Add</button>
        </form>
    </div>
    <br>
    <p>Messages</p>
    <form method="post" action="/filter">
        <input type="text" name="filter">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <button type="submit">Search</button>
    </form>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
        </div>
        <#else>
        No messages yet
    </#list>
</@c.page>