<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
    <style>
        :root { --primary: #94806a; --bg: #c2b09d; --card-white: #dedbd7; }
        body { font-family: sans-serif; background-color: var(--bg); display: flex; justify-content: center; padding: 20px; }
        .card { width: 100%; max-width: 380px; background: var(--card-white); border-radius: 25px; overflow: hidden; box-shadow: 0 10px 30px rgba(0,0,0,0.2); }
        .header { background: var(--primary); color: white; padding: 20px; text-align: center; }
        .photo-sec { text-align: center; padding: 20px; }
        .profile-img { width: 120px; height: 150px; border: 4px solid white; border-radius: 12px; }
        .content { padding: 0 25px 25px; }
        .item { margin-bottom: 15px; border-bottom: 1px solid #ccc; }
        .label { font-size: 10px; color: #7a6955; font-weight: bold; }
        .value { font-size: 16px; display: block; padding: 5px 0; color: #333; }
    </style>
</head>
<body>
    <div class="card">
        <div class="header"><h1>緊急個人資訊 (XML版)</h1></div>
        <div class="photo-sec">
            <img>
                <xsl:attribute name="src"><xsl:value-of select="root/person/photo"/></xsl:attribute>
                <xsl:attribute name="class">profile-img</xsl:attribute>
            </img>
            <h2><xsl:value-of select="root/person/name"/></h2>
        </div>
        <div class="content">
            <div class="item"><span class="label">出生日期</span><span class="value"><xsl:value-of select="root/person/dob"/></span></div>
            <div class="item"><span class="label">護照號碼</span><span class="value"><xsl:value-of select="root/person/passport"/></span></div>
            <div class="item"><span class="label">血型</span><span class="value" style="color:brown"><xsl:value-of select="root/person/blood"/></span></div>
            <div class="item"><span class="label">過敏/病史</span><span class="value"><xsl:value-of select="root/person/allergy"/></span></div>
            <div class="item" style="border:none"><span class="label">緊急聯絡人</span><span class="value"><xsl:value-of select="root/person/ice"/></span></div>
        </div>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>