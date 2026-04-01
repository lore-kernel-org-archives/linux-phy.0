Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE628D3517D
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 12:38:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dm/WEwiG92a4LUbKqqbcumwrJoq70QVdPDyj3hSnT+c=; b=HKG9i/6LgABWUo
	tWoXL4UiSv+qdSFoAtq/oRYjJcrPOmsSZYoAoMlFRd3U/MLHD7j6t1F37fhzbyfSeJlfWz7oi63Zf
	gu5hBrxAIEvFfGuJEtJMnehVPLw8A4Cx9eqEd4HV+75tAunovPkroPPomQDa6Nots70c01DjJbs8M
	FD+gt2if2Syj01zoI94sLujHRfxH0knfi/O22Rug4B9gvZCC/ZBLW2rpTwMCeEiM3uwuAjX8LHYkR
	yYbbcLNo4wiREhiYs6IEERTzr2TxQp1qw8/xeVjec8fbFWN+uVjLhe/MDlsW6cLKj6l44CXfD65QQ
	qTictuU7rgoFy8GqEdgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7upp-0000000FCjR-2ZbY;
	Wed, 01 Apr 2026 12:38:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ueG-0000000F3t4-0QFk;
	Wed, 01 Apr 2026 12:26:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=HXjqylECdGDFHUiyugySRrfNFcwy5NMDZ6un9XJQF4g=; b=quFpSU/1GK66ukHf8jteXi40qJ
	zmmrKTeJutf9PfRwEljqLg6G67VH24EKKqq3EWX7Pc4+KLYrV1mxuh3LT/mIczDBbXBgFuUcChTYZ
	CBpJyT2dmE+BcPeWsX8450iIDXqsJ1zBYCvaey3nhrFo323uhkD8/NSwwqp8Y6zjud4gS7D6q5be7
	cVg+ye3u6eQ7/kxDjZR4rqj6m9taL2iOxteDovGA8ItJEzIvynZMeAtXexp8sF+0Qzyra5TX6AlrD
	de7zFM2lTuMug20kbCqxe7cK1p8FEkA0t4xS7+blmytSdF5p7elEABp4Jhiv6iCy1po1q+rkBEXpk
	/ydKOW6g==;
Received: from www537.your-server.de ([188.40.3.216])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ueB-00000000KvX-3hes;
	Wed, 01 Apr 2026 12:26:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=HXjqylECdGDFHUiyugySRrfNFcwy5NMDZ6un9XJQF4g=; b=h6kxBhb+t/yRyIf9XD0uFBqw0E
	BMmiQpL+SoEgqb6viTrEzrmea6LtF6+wsrfHplUl7my4eWHobKNK/jIrR5M9AxagZASYJwANlnLv0
	5mfuW0Mi12TdkaOJCUg+AUDOS1TWMfknTHj4gcyrCaJKh1YLwvkOyXiIslNUAfSsdYMJjutSDnU5U
	HCjEZGVo13Cj2B2WE7fE/OqfKamb35EsmZYMxkxtSxzJmUTwxkM8NHF02Tw4ufEOvomKvoygjGx32
	n6mjeW6yb9SMb0cWwwAABOvC8hjJzsQbNdrDLbHfJ/Jn5H0bI1O18+58NAu3WdKeOL5gHbvUnLn0H
	XVVG1Lgg==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue3-000IQX-0A;
	Wed, 01 Apr 2026 14:26:03 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue2-00089b-1p;
	Wed, 01 Apr 2026 14:26:02 +0200
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Siddharth Vadapalli <s-vadapalli@ti.com>,
	Roger Quadros <rogerq@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v3 1/5] dt-bindings: phy: ti: phy-j721e-wiz: Add ti,j722s-wiz-10g compatible
Date: Wed,  1 Apr 2026 14:25:21 +0200
Message-ID: <b9d6a9322ce4f7dc3363dc00d93ab0256e12a8af.1775045279.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27958/Wed Apr  1 08:24:34 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_132613_283297_E2E7CBD2 
X-CRM114-Status: UNSURE (   8.16  )
X-CRM114-Notice: Please train this message.
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

VGhlIEo3MjJTIFdJWiBpcyBtb3N0bHkgaWRlbnRpY2FsIHRvIHRoZSBBTTY0J3MsIGJ1dCBhZGRp
dGlvbmFsbHkgc3VwcG9ydHMKU0dNSUkuIFRoZSBBTTY0IGNvbXBhdGlibGUgdGksYW02NC13aXot
MTBnIGlzIHVzZWQgYXMgYSBmYWxsYmFjay4KClNpZ25lZC1vZmYtYnk6IE5vcmEgU2NoaWZmZXIg
PG5vcmEuc2NoaWZmZXJAZXcudHEtZ3JvdXAuY29tPgotLS0KIC4uLi9iaW5kaW5ncy9waHkvdGks
cGh5LWo3MjFlLXdpei55YW1sICAgICAgICB8IDIwICsrKysrKysrKysrKy0tLS0tLS0KIDEgZmls
ZSBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBh
L0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9waHkvdGkscGh5LWo3MjFlLXdpei55
YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcyMWUt
d2l6LnlhbWwKaW5kZXggM2YxNmZmMTQ0ODRkMi4uMjgzZTNlZWRjMGYzMSAxMDA2NDQKLS0tIGEv
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcyMWUtd2l6Lnlh
bWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3BoeS90aSxwaHktajcy
MWUtd2l6LnlhbWwKQEAgLTEyLDEzICsxMiwxOSBAQCBtYWludGFpbmVyczoKIAogcHJvcGVydGll
czoKICAgY29tcGF0aWJsZToKLSAgICBlbnVtOgotICAgICAgLSB0aSxqNzIxZS13aXotMTZnCi0g
ICAgICAtIHRpLGo3MjFlLXdpei0xMGcKLSAgICAgIC0gdGksajcyMXMyLXdpei0xMGcKLSAgICAg
IC0gdGksYW02NC13aXotMTBnCi0gICAgICAtIHRpLGo3MjAwLXdpei0xMGcKLSAgICAgIC0gdGks
ajc4NHM0LXdpei0xMGcKKyAgICBvbmVPZjoKKyAgICAgIC0gaXRlbXM6CisgICAgICAgICAgLSBl
bnVtOgorICAgICAgICAgICAgICAtIHRpLGo3MjFlLXdpei0xNmcKKyAgICAgICAgICAgICAgLSB0
aSxqNzIxZS13aXotMTBnCisgICAgICAgICAgICAgIC0gdGksajcyMXMyLXdpei0xMGcKKyAgICAg
ICAgICAgICAgLSB0aSxhbTY0LXdpei0xMGcKKyAgICAgICAgICAgICAgLSB0aSxqNzIwMC13aXot
MTBnCisgICAgICAgICAgICAgIC0gdGksajc4NHM0LXdpei0xMGcKKyAgICAgIC0gaXRlbXM6Cisg
ICAgICAgICAgLSBlbnVtOgorICAgICAgICAgICAgICAtIHRpLGo3MjJzLXdpei0xMGcKKyAgICAg
ICAgICAtIGNvbnN0OiB0aSxhbTY0LXdpei0xMGcKIAogICBwb3dlci1kb21haW5zOgogICAgIG1h
eEl0ZW1zOiAxCi0tIApUUS1TeXN0ZW1zIEdtYkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxp
bmcgfCA4MjIyOSBTZWVmZWxkLCBHZXJtYW55CkFtdHNnZXJpY2h0IE3DvG5jaGVuLCBIUkIgMTA1
MDE4Ckdlc2Now6RmdHNmw7xocmVyOiBEZXRsZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwg
U3RlZmFuIFNjaG5laWRlcgpodHRwczovL3d3dy50cS1ncm91cC5jb20vCgoKLS0gCmxpbnV4LXBo
eSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
