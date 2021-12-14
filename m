Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F27FCC433EF
	for <linux-phy@archiver.kernel.org>; Tue, 14 Dec 2021 23:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5I7ZsJhtIa3a2mGLxNG16dOdYFc++RJPy46rl4gUQHA=; b=X2P9daNkLYKKB1
	BjS1UtnwOoaFZl8BGdjmEzPuwG3PQiTRgqAjQKOMNIFkq+Wl8tT0T4XILk6H21Jkwulcu2VHmSy8M
	1kqKMuhakJeF4dhNepcrYo/m40eQQ78bqEARIchLx34qjhJNZi24le0MFakMnrnNdJS7PHo1eT4OP
	X6L5k6zqxYW3aPytOs+smXQnyZA3d0VkWkBHrtE4lVvrmg/Rf6sJ+URGEYs1jxpxdr9gwkQf/JRl9
	kNpZ4zXL+HsWBsZo3vJ7heOO00xyPmgweRZdybyWNIXcwyhAVHYmpP4wjyuWfTBhan38REkxaO/sP
	SCrRAtib7Ax+ImbwwlQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxHJp-00G1s9-DJ; Tue, 14 Dec 2021 23:34:49 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxHJm-00G1r2-5u
 for linux-phy@lists.infradead.org; Tue, 14 Dec 2021 23:34:48 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E1318B81B3B;
 Tue, 14 Dec 2021 23:34:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6E5A3C34600;
 Tue, 14 Dec 2021 23:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1639524883;
 bh=6dXrC0FdP3B7Ezq06gX3Eh2HgFGakgLcBGUR+xmwRJE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=CDUAediloFuCmcB9BNlhg5n0N1FHNME3+vDj6IfDmNGTx3CXxpawQ5sHfQnc2nA3t
 031Dm6ivnTlc9z0ghNmir0dw602lSydMwo3Jj7mT6myPNvQ23mVB9E2yq99wEAUYa3
 rq+jj9yTF1FrinGx0NanIEIY2akkclnQqPxPLMEXy/GtsbPAUV/rdNODjhoR4NO4Tm
 KHBTAeZLapyZ/cvwx1jXJtTUL6ut7HaIlHqe6UuhDE20PBBqFLclm4W0YCtMj3ZiyC
 qBt8j6QkTND9yE64RZOV0UhZZoDZPK89OiLbUArpOgWuropPGZkL2DzIpxtyrIW8zr
 q1khD+mYfSluQ==
From: =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To: Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org
Cc: Vladimir Oltean <olteanv@gmail.com>,
 Holger Brunck <holger.brunck@hitachienergy.com>,
 Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Russell King <rmk+kernel@armlinux.org.uk>, linux-phy@lists.infradead.org,
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@ti.com>,
 =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
Subject: [PATCH devicetree 2/2] dt-bindings: phy: Add `tx-amplitude-microvolt`
 property binding
Date: Wed, 15 Dec 2021 00:34:32 +0100
Message-Id: <20211214233432.22580-3-kabel@kernel.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211214233432.22580-1-kabel@kernel.org>
References: <20211214233432.22580-1-kabel@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211214_153446_530950_C60B9F2E 
X-CRM114-Status: GOOD (  13.72  )
X-BeenThere: linux-phy@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Linux Phy Mailing list <linux-phy.lists.infradead.org>
List-Unsubscribe: <https://lists.infradead.org/mailman/options/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-phy/>
List-Post: <mailto:linux-phy@lists.infradead.org>
List-Help: <mailto:linux-phy-request@lists.infradead.org?subject=help>
List-Subscribe: <https://lists.infradead.org/mailman/listinfo/linux-phy>,
 <mailto:linux-phy-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-phy" <linux-phy-bounces@lists.infradead.org>
Errors-To: linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org

Q29tbW9uIFBIWXMgb2Z0ZW4gaGF2ZSB0aGUgcG9zc2liaWxpdHkgdG8gc3BlY2lmeSBwZWFrLXRv
LXBlYWsgdm9sdGFnZQpvbiB0aGUgZGlmZmVyZW50aWFsIHBhaXIgLSB0aGUgZGVmYXVsdCB2b2x0
YWdlIHNvbWV0aW1lcyBuZWVkcyB0byBiZQpjaGFuZ2VkIGZvciBhIHBhcnRpY3VsYXIgYm9hcmQu
CgpBZGQgcHJvcGVydGllcyBgdHgtYW1wbGl0dWRlLW1pY3Jvdm9sdGAgYW5kCmB0eC1hbXBsaXR1
ZGUtbWljcm92b2x0LW5hbWVzYCBmb3IgdGhpcyBwdXJwb3NlLiBUaGUgc2Vjb25kIHByb3BlcnR5
IGlzCm5lZWRlZCB0byBzcGVjaWZ5CgpFeGFtcGxlIHVzYWdlIHdpdGggb25seSBvbmUgdm9sdGFn
ZSAoaXQgd2lsbCBiZSB1c2VkIGZvciBhbGwgc3VwcG9ydGVkClBIWSBtb2RlcywgdGhlIGB0eC1h
bXBsaXR1ZGUtbWljcm92b2x0LW5hbWVzYCBwcm9wZXJ0eSBpcyBub3QgbmVlZGVkIGluCnRoaXMg
Y2FzZSk6CgogIHR4LWFtcGxpdHVkZS1taWNyb3ZvbHQgPSA8OTE1MDAwPjsKCkV4YW1wbGUgdXNh
Z2Ugd2l0aCB2b2x0YWdlcyBmb3IgbXVsdGlwbGUgbW9kZXM6CgogIHR4LWFtcGxpdHVkZS1taWNy
b3ZvbHQgPSA8OTE1MDAwPiwgPDExMDAwMDA+LCA8MTIwMDAwMD47CiAgdHgtYW1wbGl0dWRlLW1p
Y3Jvdm9sdC1uYW1lcyA9ICIyNTAwYmFzZS14IiwgInVzYiIsICJwY2llIjsKClNpZ25lZC1vZmYt
Ynk6IE1hcmVrIEJlaMO6biA8a2FiZWxAa2VybmVsLm9yZz4KLS0tCgpJIHdhbnRlZCB0byBjb25z
dHJhaW4gdGhlIHZhbHVlcyBhbGxvd2VkIGluIHRoZQpgdHgtYW1wbGl0dWRlLW1pY3Jvdm9sdC1u
YW1lc2AgcHJvcGVydHkgdG86Ci0gZXRoZXJuZXQgU2VyRGVzIG1vZGVzIChzZ21paSwgcXNnbWlp
LCAxMGdiYXNlLXIsIDI1MDBiYXNlLXgsIC4uLikKLSBQQ0llIG1vZGVzIChwYXR0ZXJuOiBecGNp
ZVsxLTZdPyQpCi0gVVNCIG1vZGVzIChwYXR0ZXJuOiBedXNiKCgtaG9zdHwtZGV2aWNlfC1vdGcp
Py0obHN8ZnN8aHN8c3N8c3NcK3w0KSk/JCkKLSBEaXNwbGF5UG9ydCBtb2RlcyAocGF0dGVybjog
XmRwKC1yYnJ8LWhiclsyM10/fC11aGJyLSgxMHwxMy41fDIwKSk/JCkKLSBDYW1lcmEgbW9kZXMg
KG1pcGktZHBoeSwgbWlwaS1kcGh5LXVuaXYsIG1pcGktZHBoeS12Mi41LXVuaXYpCi0gU3RvcmFn
ZSBtb2RlcyAoc2F0YSwgdWZzLWhzLCB1ZnMtaHMtYSwgdWZzLWhzLWIpCgpCdXQgd2FzIHVuYWJs
ZSB0by4gVGhlICctbmFtZXMnIHN1ZmZpeCBpbXBsaWVzIHN0cmluZy1hcnJheSB0eXBlLCBhbmQK
c3RyaW5nLWFycmF5IHR5cGUgZG9lcyBub3QgYWxsb3cgdG8gc3BlY2lmeSBhIHR5cGUgZm9yIGFs
bCBpdGVtcyBpbiBhCnNpbXBsZSB3YXksIGkuZS46CiAgaXRlbXM6CiAgICBlbnVtOgogICAgICAt
IHNnbWlpCiAgICAgIC0gc2F0YQogICAgICAtIHVzYgogICAgICAuLi4KU3VjaCBjb25zdHJhaW50
IGRvZXMgd29yayB3aGVuIGNoYW5naW5nIGV0aGVybmV0IGNvbnRyb2xsZXIncwpgcGh5LWNvbm5l
Y3Rpb24tdHlwZWAgdG8gYXJyYXksIHNlZQpodHRwczovL2xvcmUua2VybmVsLm9yZy9uZXRkZXYv
MjAyMTExMjMxNjQwMjcuMTU2MTgtMi1rYWJlbEBrZXJuZWwub3JnLwoKQnV0IGl0IHNlZW1zIHRo
YXQgc3RyaW5nLWFycmF5IHR5cGUgcHJvaGliaXRzIHRoaXMuCgotLS0KIC4uLi9kZXZpY2V0cmVl
L2JpbmRpbmdzL3BoeS9waHkueWFtbCAgICAgICAgICB8IDIyICsrKysrKysrKysrKysrKysrKysK
IDEgZmlsZSBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHkueWFtbCBiL0RvY3VtZW50YXRpb24vZGV2
aWNldHJlZS9iaW5kaW5ncy9waHkvcGh5LnlhbWwKaW5kZXggYTViNmIwNGNmZjViLi44OTE1MDY1
Y2Y2YzIgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkv
cGh5LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS9waHku
eWFtbApAQCAtMzEsOSArMzEsMjkgQEAgcHJvcGVydGllczoKICAgICAgIFBoYW5kbGUgdG8gYSBy
ZWd1bGF0b3IgdGhhdCBwcm92aWRlcyBwb3dlciB0byB0aGUgUEhZLiBUaGlzIHJlZ3VsYXRvcgog
ICAgICAgd2lsbCBiZSBtYW5hZ2VkIGR1cmluZyB0aGUgUEhZIHBvd2VyIG9uL29mZiBzZXF1ZW5j
ZS4KIAorICB0eC1hbXBsaXR1ZGUtbWljcm92b2x0OgorICAgIGRlc2NyaXB0aW9uOgorICAgICAg
VHJhbnNtaXQgYW1wbGl0dWRlIHZvbHRhZ2VzIGluIG1pY3Jvdm9sdHMsIHBlYWstdG8tcGVhay4g
SWYgdGhpcyBwcm9wZXJ0eQorICAgICAgY29udGFpbnMgbXVsdGlwbGUgdmFsdWVzIGZvciB2YXJp
b3VzIFBIWSBtb2RlcywgdGhlCisgICAgICAndHgtYW1wbGl0dWRlLW1pY3Jvdm9sdC1uYW1lcycg
cHJvcGVydHkgbXVzdCBiZSBwcm92aWRlZCBhbmQgY29udGFpbgorICAgICAgY29ycmVzcG9uZGlu
ZyBtb2RlIG5hbWVzLgorCisgIHR4LWFtcGxpdHVkZS1taWNyb3ZvbHQtbmFtZXM6CisgICAgZGVz
Y3JpcHRpb246IHwKKyAgICAgIE5hbWVzIG9mIHRoZSBtb2RlcyBjb3JyZXNwb25kaW5nIHRvIHZv
bHRhZ2VzIGluIHRoZQorICAgICAgJ3R4LWFtcGxpdHVkZS1taWNyb3ZvbHQnIHByb3BlcnR5LiBS
ZXF1aXJlZCBvbmx5IGlmIG11bHRpcGxlIHZvbHRhZ2VzCisgICAgICBhcmUgcHJvdmlkZWQuCisK
KyAgICAgIElmIGEgdmFsdWUgb2YgJ2RlZmF1bHQnIGlzIHByb3ZpZGVkLCB0aGUgc3lzdGVtIHNo
b3VsZCB1c2UgaXQgZm9yIGFueSBQSFkKKyAgICAgIG1vZGUgdGhhdCBpcyBvdGhlcndpc2Ugbm90
IGRlZmluZWQgaGVyZS4gSWYgJ2RlZmF1bHQnIGlzIG5vdCBwcm92aWRlZCwgdGhlCisgICAgICBz
eXN0ZW0gc2hvdWxkIHVzZSBtYW51ZmFjdHVyZXIgZGVmYXVsdCB2YWx1ZS4KKwogcmVxdWlyZWQ6
CiAgIC0gJyNwaHktY2VsbHMnCiAKK2RlcGVuZGVuY2llczoKKyAgdHgtYW1wbGl0dWRlLW1pY3Jv
dm9sdC1uYW1lczogWyB0eC1hbXBsaXR1ZGUtbWljcm92b2x0IF0KKwogYWRkaXRpb25hbFByb3Bl
cnRpZXM6IHRydWUKIAogZXhhbXBsZXM6CkBAIC00Niw2ICs2Niw4IEBAIGV4YW1wbGVzOgogICAg
IHBoeTogcGh5IHsKICAgICAgICNwaHktY2VsbHMgPSA8MT47CiAgICAgICBwaHktc3VwcGx5ID0g
PCZwaHlfcmVndWxhdG9yPjsKKyAgICAgIHR4LWFtcGxpdHVkZS1taWNyb3ZvbHQgPSA8OTE1MDAw
PiwgPDExMDAwMDA+LCA8MTIwMDAwMD47CisgICAgICB0eC1hbXBsaXR1ZGUtbWljcm92b2x0LW5h
bWVzID0gIjI1MDBiYXNlLXgiLCAidXNiLWhzIiwgInVzYi1zcyI7CiAgICAgfTsKIAogICAgIGV0
aGVybmV0LWNvbnRyb2xsZXIgewotLSAKMi4zMi4wCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxp
c3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
