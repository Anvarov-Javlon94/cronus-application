<#assign
    known = Session.SPRING_SECURITY_CONTEXT??
        >

<#if known>
    <#assign
    admin = Session.SPRING_SECURITY_CONTEXT.authentication.principal
    name = admin.getUsername()
    isAuthority = admin.isAuthority()
    studentId = admin.getId()
    >

    <#else >
    <#assign
    name = "unknown"
    isAuthority = false
    >
</#if>