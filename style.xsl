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
        .item { margin-bottom: 15px; border-bottom: 1px solid rgba(0,0,0,0.1); padding-bottom: 5px; }
        .label { font-size: 10px; color: #7a6955; font-weight: bold; }
        .value { font-size: 16px; display: block; color: #333; margin-top: 3px; }
    </style>
</head>
<body>
    <div class="card">
        <div class="header"><h1>Emergency Medical ID (XML)</h1></div>
        <div class="photo-sec">
            <img class="profile-img">
                <xsl:attribute name="src"><xsl:value-of select="root/person/photo"/></xsl:attribute>
            </img>
            <h2 style="color:#94806a;"><xsl:value-of select="root/person/name"/></h2>
        </div>
        <div class="content">
            <div class="item"><span class="label">Date of Birth</span><span class="value"><xsl:value-of select="root/person/dob"/></span></div>
            <div class="item"><span class="label">Passport No.</span><span class="value"><xsl:value-of select="root/person/passport"/></span></div>
            <div class="item"><span class="label">Blood Type</span><span class="value" style="color:brown; font-weight:bold;"><xsl:value-of select="root/person/blood"/></span></div>
            <div class="item"><span class="label">Allergies/History</span><span class="value"><xsl:value-of select="root/person/allergy"/></span></div>
            <div class="item" style="border:none"><span class="label">ICE Contact</span><span class="value" style="white-space: pre-line;"><xsl:value-of select="root/person/ice"/></span></div>
        </div>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>