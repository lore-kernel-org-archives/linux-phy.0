Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76D9E103E191
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 14:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xltwDAox81WVk0viTrLdWRjU9ZSoIvQaPmk1xdrWhgw=; b=XtGYNeNPU1zs16
	9yKX5sRDHcXs25rhOO/VGb8873NLaANDI5DBzviQuflQVBQhmLCsb5pzMBCLj/aedz53Uk3fLb3jR
	DaQxcmmicCs1wj9/0EjNBJRy/ahD+6rNy04pezybpbHyb7QVMubsQRtQEifsc0iulsDXtg4CKGmOp
	FWrVZay/RxuyVphx8fmfXBzN0J4GhBcc6d6JhH0UXkktOibU9U/MO2gLf+B8rKDgL+hi+pxOhXYc1
	PCWsqAIYKlmtWlb2ssKvr9rjWJ2eoAoIpVBuFfaOHDw9AG8c85L3c+2PYzfDiRAPj2K3XUDdgbITb
	pFjTTnfN/oAGnlmD2xGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rYJ-00000008YJY-0h2F;
	Wed, 18 Mar 2026 14:07:15 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rY1-00000008Y7U-37IH;
	Wed, 18 Mar 2026 14:07:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=H2WUMtFAEKRtI9bWD27HMqkspiGAj4pU2YULfbcVauk=; b=Y4B4utrWAIzgKxrGFr4PENHgsS
	icrmEjNJNAHayzeba3h+9dRrHlr/cX9ObyDtGPaBbY0cCwkLWXYCCikUDF7CkTfaHVsU8uYCaiCYz
	B4+J+lgtAXPOTBmtabUE7aYxV1rb/9LqLbKuq7NIFfMxMoKNwza6qPeNC7KVuAhXHQjPiDBGGfi7D
	8it2tHoO9/m6md7cXguPDpiVu+wLnEXH2bRGw/cHfrprWKeCvMNRG5KD/FyVhV24ZNd6Dh6piCrnX
	Q+GPTvOCtdsPkl2erT6oSC7HQjfV22AQ+LG27VKikDQMJGnWK+amDaMlCnvBerptqyt3JqRCB0hnT
	mU7VV3YQ==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXz-000BqW-2X;
	Wed, 18 Mar 2026 15:06:55 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXW-000B1s-30;
	Wed, 18 Mar 2026 15:06:26 +0100
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
Subject: [PATCH 7/7] arm64: dts: ti: k3-j722s-main: use J722S compatible strings for SGMII support
Date: Wed, 18 Mar 2026 15:05:29 +0100
Message-ID: <5da686c95ad728cf7505424577211f0ce8937ead.1773751309.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
References: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27944/Wed Mar 18 07:24:13 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_070657_801451_D46102B7 
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

VXBkYXRlIFdJWiwgZ21paS1zZWwgYW5kIENQU1czRyB0byB1c2UgdGhlIEo3MjJTLXNwZWNpZmlj
IGNvbXBhdGlibGUKc3RyaW5ncy4KClNpZ25lZC1vZmYtYnk6IE5vcmEgU2NoaWZmZXIgPG5vcmEu
c2NoaWZmZXJAZXcudHEtZ3JvdXAuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMt
ajcyMnMtbWFpbi5kdHNpIHwgMTIgKysrKysrKysrKy0tCiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5z
ZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3RpL2szLWo3MjJzLW1haW4uZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcy
MnMtbWFpbi5kdHNpCmluZGV4IDllZTVkMGM4ZmZkMWUuLmJlN2U1MzNlNmMzOGEgMTAwNjQ0Ci0t
LSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMnMtbWFpbi5kdHNpCisrKyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvdGkvazMtajcyMnMtbWFpbi5kdHNpCkBAIC0xOCw3ICsxOCw3IEBAIHNl
cmRlc19yZWZjbGs6IGNsay0wIHsKIAogJmNiYXNzX21haW4gewogCXNlcmRlc193aXowOiBwaHlA
ZjAwMDAwMCB7Ci0JCWNvbXBhdGlibGUgPSAidGksYW02NC13aXotMTBnIjsKKwkJY29tcGF0aWJs
ZSA9ICJ0aSxqNzIycy13aXotMTBnIjsKIAkJcmFuZ2VzID0gPDB4MGYwMDAwMDAgMHgwIDB4MGYw
MDAwMDAgMHgwMDAxMDAwMD47CiAJCSNhZGRyZXNzLWNlbGxzID0gPDE+OwogCQkjc2l6ZS1jZWxs
cyA9IDwxPjsKQEAgLTU2LDcgKzU2LDcgQEAgc2VyZGVzMDogc2VyZGVzQGYwMDAwMDAgewogCX07
CiAKIAlzZXJkZXNfd2l6MTogcGh5QGYwMTAwMDAgewotCQljb21wYXRpYmxlID0gInRpLGFtNjQt
d2l6LTEwZyI7CisJCWNvbXBhdGlibGUgPSAidGksajcyMnMtd2l6LTEwZyI7CiAJCXJhbmdlcyA9
IDwweDBmMDEwMDAwIDB4MCAweDBmMDEwMDAwIDB4MDAwMTAwMDA+OwogCQkjYWRkcmVzcy1jZWxs
cyA9IDwxPjsKIAkJI3NpemUtY2VsbHMgPSA8MT47CkBAIC00NTEsNiArNDUxLDE0IEBAIHBjaWUw
X2N0cmw6IHBjaWUwLWN0cmxANDA3MCB7CiAJfTsKIH07CiAKKyZjcHN3M2cgeworCWNvbXBhdGli
bGUgPSAidGksajcyMnMtY3Bzdy1udXNzIjsKK307CisKKyZwaHlfZ21paV9zZWwgeworCWNvbXBh
dGlibGUgPSAidGksajcyMnMtcGh5LWdtaWktc2VsIjsKK307CisKICZvY19zcmFtIHsKIAlyZWcg
PSA8MHgwMCAweDcwMDAwMDAwIDB4MDAgMHg0MDAwMD47CiAJcmFuZ2VzID0gPDB4MDAgMHgwMCAw
eDcwMDAwMDAwIDB4NDAwMDA+OwotLSAKVFEtU3lzdGVtcyBHbWJIIHwgTcO8aGxzdHJhw59lIDIs
IEd1dCBEZWxsaW5nIHwgODIyMjkgU2VlZmVsZCwgR2VybWFueQpBbXRzZ2VyaWNodCBNw7xuY2hl
biwgSFJCIDEwNTAxOApHZXNjaMOkZnRzZsO8aHJlcjogRGV0bGVmIFNjaG5laWRlciwgUsO8ZGln
ZXIgU3RhaGwsIFN0ZWZhbiBTY2huZWlkZXIKaHR0cHM6Ly93d3cudHEtZ3JvdXAuY29tLwoKCi0t
IApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXBoeQo=
