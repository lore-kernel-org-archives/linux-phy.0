Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A422E9A779
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 12:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yAIEjkKaqZukCpzAKxL0U08o1pgO/dWA44Ciw/aj3ag=; b=sPf1NRjYMYIt8S
	XyK1LzozLz4nPuvC4hW9oGzzR777cxODgXOEWgXqGYbbz/M4FQ0io98sgWhOXtRGm11IkH8Yn2hvt
	cfS8SblYZdf2ykmvcXzy033fmPdrePvk7DwT1PFAeOdMxifB9H0eseC60FUNsqsCNAsjgOOy6UrPH
	oa/dxaim/eGdx31ygYnz/Sqttrd9XqBCrIm69210Q3AkH6yACK6tPoxdqErrw3OAriRtTUji/vHll
	rjlhNlbO2SG+zyKmqSbOElc5lWLoAASF1CGtRRkKHHHJ4dlRgeQFaneem56eoxU0dM9d++4siwVEL
	cc+YBVsBgGce/5lrT/sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50u9-00000001Nbf-0ijA;
	Tue, 24 Mar 2026 12:30:41 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50ty-00000001NWo-3ct7;
	Tue, 24 Mar 2026 12:30:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=r2f84TTEWNrh6ZSSjAaDbdTly3GCRBMKBI+zPfcgc9Y=; b=SdxsBP5aJYd4z/xFwxCiA3pg2V
	sTHuoCjzNSO3ZJ5umP6P3cZXGC/5ziC+kfIm8sJEHJRiic2wPmYXNFUyM9l0fHLsDJ4f4JVlxsI33
	OcnmHXrll+bTLVa6hnH8JYiWjnddwpwwwGALji7C/57ZbXsMUNx2dJCTPoer0xGgcaRzdPPvFKgC7
	NUaR8rCrpNqUkxwGc0LzrZ/jCaeGVzBvJtmz0oO7QUbWKPh7SwfGpiQFivoiCeuwAt5FX6Vy5+tO1
	SpPef78ma2kA8OHhtNyR6JFaLxPzt9hwGA08McUAIbCzyNv6iFKRbIm4E7s0k5ILxji0XZDDQdgmx
	JybvRH/w==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50tp-0005qD-1u;
	Tue, 24 Mar 2026 13:30:21 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50tp-000Pna-1M;
	Tue, 24 Mar 2026 13:30:20 +0100
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Andrew Lunn <andrew+netdev@lunn.ch>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>,
	Paolo Abeni <pabeni@redhat.com>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Siddharth Vadapalli <s-vadapalli@ti.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	netdev@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v2 0/7] J722S SGMII support
Date: Tue, 24 Mar 2026 13:29:36 +0100
Message-ID: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27950/Tue Mar 24 07:24:19 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_053031_027327_394DB8FD 
X-CRM114-Status: UNSURE (   9.72  )
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

VGhlIEo3MjJTIENQU1cgYW5kIFNFUkRFUyBhcmUgdmVyeSBzaW1pbGFyIHRvIHRoZSB2YXJpYW50
cyBmb3VuZCBvbiB0aGUKQU02NCwgYnV0IHRoZXkgYWRkaXRpb25hbGx5IHN1cHBvcnQgU0dNSUku
IEludHJvZHVjZSBuZXcgY29tcGF0aWJsZQpzdHJpbmdzIGZvciB0aGUgSjcyMlMgdG8gYWRkIHRo
aXMgc3VwcG9ydCB0byB0aGUgZHJpdmVycy4KClRoaXMgaXMgYSBwcmVyZXF1aXNpdGUgZm9yIHRo
ZSBTaW5nbGUtUGFpciBFdGhlcm5ldCBpbnRlcmZhY2Ugb2YgdGhlClRRLVN5c3RlbXMgTUJhNjd4
eCBiYXNlYm9hcmQgZm9yIHRoZSBUUU1hNjd4eCBTb00sIHdoaWNoIHdpbGwgYmUKc3VibWl0dGVk
IHNlcGFyYXRlbHkuCgp2MjoKLSBLZWVwIHN1cHBvcnQgZm9yIHRoZSBBTTY0IGNvbXBhdGlibGUg
c3RyaW5ncyBhcyBhIGZhbGxiYWNrLCBhZGp1c3QgY29tbWl0CiAgbWVzc2FnZXMgKHBhdGNoZXMg
MS0zIGFuZCA3KQotIE5vIGNoYW5nZXMgdG8gcGF0Y2hlcyA0LTYKCk5vcmEgU2NoaWZmZXIgKDcp
OgogIGR0LWJpbmRpbmdzOiBwaHk6IHRpOiBwaHktajcyMWUtd2l6OiBBZGQgdGksajcyMnMtd2l6
LTEwZyBjb21wYXRpYmxlCiAgZHQtYmluZGluZ3M6IHBoeTogdGk6IHBoeS1nbWlpLXNlbDogQWRk
IHRpLGo3MjJzLXBoeS1nbWlpLXNlbAogICAgY29tcGF0aWJsZQogIGR0LWJpbmRpbmdzOiBuZXQ6
IHRpOiBrMy1hbTY1NC1jcHN3LW51c3M6IEFkZCB0aSxqNzIycy1jcHN3LW51c3MKICAgIGNvbXBh
dGlibGUKICBwaHk6IHRpOiBwaHktajcyMWUtd2l6OiBhZGQgc3VwcG9ydCBmb3IgSjcyMlMgU29D
IGZhbWlseQogIHBoeTogdGk6IGdtaWktc2VsOiBhZGQgc3VwcG9ydCBmb3IgSjcyMlMgU29DIGZh
bWlseQogIG5ldDogZXRoZXJuZXQ6IHRpOiBhbTY1LWNwc3c6IGFkZCBzdXBwb3J0IGZvciBKNzIy
UyBTb0MgZmFtaWx5CiAgYXJtNjQ6IGR0czogdGk6IGszLWo3MjJzLW1haW46IHVzZSBKNzIyUyBj
b21wYXRpYmxlcyBmb3IgV0laLCBnbWlpLXNlbAogICAgYW5kIENQU1czRwoKIC4uLi9iaW5kaW5n
cy9uZXQvdGksazMtYW02NTQtY3Bzdy1udXNzLnlhbWwgICB8IDIwICsrKysrKysrKystLS0tLS0K
IC4uLi9iaW5kaW5ncy9waHkvdGkscGh5LWdtaWktc2VsLnlhbWwgICAgICAgICB8IDI0ICsrKysr
KysrKysrKy0tLS0tLS0KIC4uLi9iaW5kaW5ncy9waHkvdGkscGh5LWo3MjFlLXdpei55YW1sICAg
ICAgICB8IDIwICsrKysrKysrKystLS0tLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcy
MnMtbWFpbi5kdHNpICAgICB8IDEyICsrKysrKysrLS0KIGRyaXZlcnMvbmV0L2V0aGVybmV0L3Rp
L2FtNjUtY3Bzdy1udXNzLmMgICAgICB8ICA4ICsrKysrKysKIGRyaXZlcnMvcGh5L3RpL3BoeS1n
bWlpLXNlbC5jICAgICAgICAgICAgICAgICB8IDExICsrKysrKysrKwogZHJpdmVycy9waHkvdGkv
cGh5LWo3MjFlLXdpei5jICAgICAgICAgICAgICAgIHwgMjQgKysrKysrKysrKysrKysrKysrKwog
NyBmaWxlcyBjaGFuZ2VkLCA5NCBpbnNlcnRpb25zKCspLCAyNSBkZWxldGlvbnMoLSkKCi0tIApU
US1TeXN0ZW1zIEdtYkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxpbmcgfCA4MjIyOSBTZWVm
ZWxkLCBHZXJtYW55CkFtdHNnZXJpY2h0IE3DvG5jaGVuLCBIUkIgMTA1MDE4Ckdlc2Now6RmdHNm
w7xocmVyOiBEZXRsZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwgU3RlZmFuIFNjaG5laWRl
cgpodHRwczovL3d3dy50cS1ncm91cC5jb20vCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlzdAps
aW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
