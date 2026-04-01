Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B4B0DD3517E
	for <linux-phy@archiver.kernel.org>; Wed,  1 Apr 2026 12:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YotCEG0rjWtQF/ikFEVQBxxYKp9rZvNkPmDYWjL3xrQ=; b=eprFF9it5yE57/
	DMxvfiLMoavsCh+6WYG9KAsrPZO/5k5JloECEvfraZ1NjccGvv78PozIFI4tH9eUm2PTKmg+whgtO
	42eRdB6+tFLkjdYmINKoE9JzS3LjhR5yxkDr7U/nBpbCEBFUBHVvB+SkmKRZOPiuMHhzIp0beHejU
	zkTLrs+AF28rzLgm6UgFIZOD3GGCK9Sj84OK/vBEZZQoY5EHx5XjG+oM8kt3eZrQ4iRBGPi17IUE3
	iiV1t67WzcEcC3jEqurLAU0r7fGbFirJbfFk78H4JYNXT5ph8y2fOle/1iqEI22fB21WncYwukuNq
	tcQFSjXd1pZOcftAQ8IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7upm-0000000FCdR-1xgh;
	Wed, 01 Apr 2026 12:38:10 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ueC-0000000F3pc-0mVK;
	Wed, 01 Apr 2026 12:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=iXZKh39YA9QQda5suRG0NPBgfkw/vmM7xN5WKLiYDaU=; b=CzE1+RiJp9owbRT7QzmuT74XRc
	f3l7KfeC17N5ABlVGcu4tCeuTkIELfjQT75H+8Rzh74XI2uoG0Eyp4Zcxl6zX8v7Rp3dMwKETbpDe
	T1OavuDk04eE/BaFhnkgBnbp2W2mzoV2yFNX0r69epFcbYDG4HdDb5N6grYZGTlT1WVMi02wjBSX8
	/zRYyrbMF57OYYpM5LFhfwDQUO8PoOfdbR9Fdj61MVnwHP1WWK0rVGCpnNrfWIFxMoqFn186icv63
	c13zwu21J9NzNfzM9WiklIMa97mkfVGh0qzLEqJMEpB1XVzxkL15Sk4PiPUaHq63LLFN+aJa0VUnm
	MS6fu4Kw==;
Received: from www537.your-server.de ([188.40.3.216])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7ue7-00000000Kts-1NXK;
	Wed, 01 Apr 2026 12:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=iXZKh39YA9QQda5suRG0NPBgfkw/vmM7xN5WKLiYDaU=; b=cY/aMbdtyM7606X2A+IiHSBqXd
	Gx1sHTKTaYJDjkJRa+JgRFvk/dUSEYTeNJbzFdV6Pfy/0gFTKq1l8yHFL+rN+YuaqLlCn+YLXjL5N
	3wexm59ZPQjxoWswaGfuyiybwJekliqtE2RQXPK4URSmkJW1H33stARljCt4FjYwAEpAwhzYTCrS8
	z9HtTjX//SRyMXBKnFS9QUgpngFo6haEyF28w2froKsDDJMzg3k9F5Fvm6QKjS9me8uFAg08QhioA
	+oKadGNiQqS3ETWLLkOnQTn8oyrxbfYZNCY+5T0cYAMJQJszlI/5qHN8IOj7CNJlkZvxMwhZSA6J0
	pCTApuWw==;
Received: from sslproxy07.your-server.de ([78.47.199.104])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue5-000IRC-1N;
	Wed, 01 Apr 2026 14:26:05 +0200
Received: from localhost ([127.0.0.1])
	by sslproxy07.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w7ue4-00089b-35;
	Wed, 01 Apr 2026 14:26:04 +0200
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
Subject: [PATCH v3 5/5] arm64: dts: ti: k3-j722s-main: use J722S compatibles for WIZ, gmii-sel and CPSW3G
Date: Wed,  1 Apr 2026 14:25:25 +0200
Message-ID: <55607ba1ca2bcf5c60a7d1e3c88fd20053a8be5c.1775045279.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
References: <cover.1775045279.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27958/Wed Apr  1 08:24:34 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260401_132607_511264_20C7BD88 
X-CRM114-Status: UNSURE (   9.35  )
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
