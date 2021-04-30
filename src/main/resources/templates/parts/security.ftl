<#assign
known = Session.SPRING_SECURITY_CONTEXT??
>

<#if known>
    <#assign
    admin = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = admin.getUsername()
    isAdmin = admin.isAdmin()
    studentId = admin.getId()
    >

<#else>
    <#assign
    name = "unknown"
    isAdmin = false

    >

</#if>