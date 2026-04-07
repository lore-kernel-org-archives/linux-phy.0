Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E2BA1FEEF2A
	for <linux-phy@archiver.kernel.org>; Tue,  7 Apr 2026 11:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YotCEG0rjWtQF/ikFEVQBxxYKp9rZvNkPmDYWjL3xrQ=; b=TtOtnRrpbJlowr
	BRICs246w8Hr6NsRMFtzsMC/Pi6ivLZnzqGs/vdq9MjFQGn2Zvae5iRwhO4KjHqGTl1sE0XKWBQl7
	l7KwH0PdOpXhecHQN7h/Z7pOceoHa04jcZxuauiPgVvQAkys28ipSEXrtqpschfU7yc+r9IUtaQ16
	Df5Lybv+MUKlCUtHz3l5M57PiT2oV7WfBtByyakX5UAJ50NPl34xP+6WiQ2dEKc7M1cStYwc9PDh9
	5UEGHLyHdpXS7n+ShP15ZUmfODdZlVWKgKbPzV8mLV7WWBNPH8d+T+oZmmDejgT6Zex6kuCdeh4tC
	fTjTj9IopiRnCTLtdgiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4q2-00000006ODj-2lbB;
	Tue, 07 Apr 2026 11:43:22 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wA4pu-00000006O5g-1HcP;
	Tue, 07 Apr 2026 11:43:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=iXZKh39YA9QQda5suRG0NPBgfkw/vmM7xN5WKLiYDaU=; b=KolcFXn6jaP6Ezc5ELoY4CHeDE
	5UUtQvUEGdFBGtCo+KK1CcWybnglFHBKFkC/SRNhY/bAqNWep4bn4pHGNSS1D6zI2CZLWSNuhsXY5
	/0giUl3b3VuYljl1jimVrcbVO2HgVHUaeC9UCh9ZFUTK4HbK4qunewJb1n4UhTB4ndixIZCfwZLQ8
	7Si8wUoN+aoy71MwHVy9UF10HmEzeEWg8KVX71Me0eJ3XMIbd/qLfJukXDsWzZ5kdmCAN1318x0aK
	UHbqsTZsUHaUNdLojv97WXZnoHCseuqzPueOge4/xw4oLin86j2xmSdGZ01PrL0FAK6WUOhDPaRu1
	KHYkgJ7A==;
Received: from sslproxy08.your-server.de ([78.47.166.52])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pr-000IKn-2L;
	Tue, 07 Apr 2026 13:43:11 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy08.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1wA4pq-000PKA-0V;
	Tue, 07 Apr 2026 13:43:11 +0200
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
Subject: [PATCH v4 5/5] arm64: dts: ti: k3-j722s-main: use J722S compatibles for WIZ, gmii-sel and CPSW3G
Date: Tue,  7 Apr 2026 13:42:37 +0200
Message-ID: <391f17ba7b0e9dcaa1fc8210114dfda7eb3c0467.1775559102.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775559102.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27964/Tue Apr  7 08:24:40 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260407_044314_356316_6BBA1128 
X-CRM114-Status: UNSURE (   8.65  )
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

VXBkYXRlIFdJWiwgZ21paS1zZWwgYW5kIENQU1czRyB0byB1c2UgdGhlIEo3MjJTLXNwZWNpZmlj
IGNvbXBhdGlibGUKc3RyaW5ncywgZW5hYmxpbmcgU0dNSUkgc3VwcG9ydC4gVGhlIGZhbGxiYWNr
IGNvbXBhdGlibGVzIHByZXNlcnZlCmNvbXBhdGliaWxpdHkgb2YgdGhlIHVwZGF0ZWQgRGV2aWNl
IFRyZWVzIHdpdGggb2xkZXIga2VybmVscy4KClNpZ25lZC1vZmYtYnk6IE5vcmEgU2NoaWZmZXIg
PG5vcmEuc2NoaWZmZXJAZXcudHEtZ3JvdXAuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
dGkvazMtajcyMnMtbWFpbi5kdHNpIHwgMTIgKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwg
MTAgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0
L2Jvb3QvZHRzL3RpL2szLWo3MjJzLW1haW4uZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkv
azMtajcyMnMtbWFpbi5kdHNpCmluZGV4IDllZTVkMGM4ZmZkMWUuLjcwZjQzMGFhM2E5NDQgMTAw
NjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMnMtbWFpbi5kdHNpCisrKyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMnMtbWFpbi5kdHNpCkBAIC0xOCw3ICsxOCw3
IEBAIHNlcmRlc19yZWZjbGs6IGNsay0wIHsKIAogJmNiYXNzX21haW4gewogCXNlcmRlc193aXow
OiBwaHlAZjAwMDAwMCB7Ci0JCWNvbXBhdGlibGUgPSAidGksYW02NC13aXotMTBnIjsKKwkJY29t
cGF0aWJsZSA9ICJ0aSxqNzIycy13aXotMTBnIiwgInRpLGFtNjQtd2l6LTEwZyI7CiAJCXJhbmdl
cyA9IDwweDBmMDAwMDAwIDB4MCAweDBmMDAwMDAwIDB4MDAwMTAwMDA+OwogCQkjYWRkcmVzcy1j
ZWxscyA9IDwxPjsKIAkJI3NpemUtY2VsbHMgPSA8MT47CkBAIC01Niw3ICs1Niw3IEBAIHNlcmRl
czA6IHNlcmRlc0BmMDAwMDAwIHsKIAl9OwogCiAJc2VyZGVzX3dpejE6IHBoeUBmMDEwMDAwIHsK
LQkJY29tcGF0aWJsZSA9ICJ0aSxhbTY0LXdpei0xMGciOworCQljb21wYXRpYmxlID0gInRpLGo3
MjJzLXdpei0xMGciLCAidGksYW02NC13aXotMTBnIjsKIAkJcmFuZ2VzID0gPDB4MGYwMTAwMDAg
MHgwIDB4MGYwMTAwMDAgMHgwMDAxMDAwMD47CiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkj
c2l6ZS1jZWxscyA9IDwxPjsKQEAgLTQ1MSw2ICs0NTEsMTQgQEAgcGNpZTBfY3RybDogcGNpZTAt
Y3RybEA0MDcwIHsKIAl9OwogfTsKIAorJmNwc3czZyB7CisJY29tcGF0aWJsZSA9ICJ0aSxqNzIy
cy1jcHN3LW51c3MiLCAidGksYW02NDItY3Bzdy1udXNzIjsKK307CisKKyZwaHlfZ21paV9zZWwg
eworCWNvbXBhdGlibGUgPSAidGksajcyMnMtcGh5LWdtaWktc2VsIiwgInRpLGFtNjU0LXBoeS1n
bWlpLXNlbCI7Cit9OworCiAmb2Nfc3JhbSB7CiAJcmVnID0gPDB4MDAgMHg3MDAwMDAwMCAweDAw
IDB4NDAwMDA+OwogCXJhbmdlcyA9IDwweDAwIDB4MDAgMHg3MDAwMDAwMCAweDQwMDAwPjsKLS0g
ClRRLVN5c3RlbXMgR21iSCB8IE3DvGhsc3RyYcOfZSAyLCBHdXQgRGVsbGluZyB8IDgyMjI5IFNl
ZWZlbGQsIEdlcm1hbnkKQW10c2dlcmljaHQgTcO8bmNoZW4sIEhSQiAxMDUwMTgKR2VzY2jDpGZ0
c2bDvGhyZXI6IERldGxlZiBTY2huZWlkZXIsIFLDvGRpZ2VyIFN0YWhsLCBTdGVmYW4gU2NobmVp
ZGVyCmh0dHBzOi8vd3d3LnRxLWdyb3VwLmNvbS8KCgotLSAKbGludXgtcGh5IG1haWxpbmcgbGlz
dApsaW51eC1waHlAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwczovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1waHkK
