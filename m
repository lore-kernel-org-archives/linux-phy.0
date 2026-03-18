Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD380103E18D
	for <linux-phy@archiver.kernel.org>; Wed, 18 Mar 2026 14:07:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh8IiiXigLeJrSl4lJmXZsUwibHild9gz/2VJxHLQYU=; b=DwlPUOEyhW+y2C
	xhB1OAiTS1stYfXRJuxCGDcUaonj8rz2z0hjzwK5wW2G9xFxWePk8fcUxgJ/rneJTEiOAldHT0GDt
	rIO3UGhZlqeHZMFlesGSB+QuH934UqJblKL1BmSbVhcKt21XQQmoGvkA3b636UPs6uMygSux45I8s
	CUk2r/wrmW8wR+8w3Gean+QsVtdMYazOtFuoOVDKFhfu+prxc+0yVc9t/3ZVSIKaiJOpWa7UynwSJ
	aoIq0wl0quJlYz9ePhr9axbJdbhnStB6WDKmHjl5NFa6yf/JMLOEV3+1fFNjVwjXZK4h1TCSdnm4+
	57x5hjfgkfW2RN22Tedw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rYI-00000008YIe-2PVW;
	Wed, 18 Mar 2026 14:07:14 +0000
Received: from www537.your-server.de ([188.40.3.216])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2rY1-00000008Y7R-1JKf;
	Wed, 18 Mar 2026 14:07:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=CDZ1x6uk3cX7ikuybSPnahjbUbj3LWWbgoH1EL3EOnw=; b=E/eXgY7ZPQr0V7BMykQ9/791pr
	vWig9lMSWJf/8dj4GJU7hNUIpYm+4NeifXJlR/H6qFvKUw1Bd7bXa9gtO7SLQbCVI/zbpBnUXeaJa
	5um0tUvy3Ew2R/y3f7ELe0+sBqkQWZWVJnPLP7htlgGMa8H1q02EeiSdv9ASh2jUfjceGD2evsZxI
	rZjDEUER5F81wvs0agQ5pZtzxCcWdeVv+WS0zoL9pN0UI5gTpOa9sqZX0GVGc8YkYGBvUG4Z10Q8I
	PV4hG25JI9EstaAh/C4Bp4+361iQrkChOQPYbOxotGRGz14L3rnIHHrg+TPaY9RiPbFoDEqygjb43
	xlpbM4NQ==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXy-000BqL-28;
	Wed, 18 Mar 2026 15:06:54 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy06.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w2rXV-000B1s-2h;
	Wed, 18 Mar 2026 15:06:25 +0100
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
Subject: [PATCH 5/7] phy: ti: gmii-sel: add support for J722S SoC family
Date: Wed, 18 Mar 2026 15:05:27 +0100
Message-ID: <9349c02ab54bc046ae701d9c646bf226a33d8af4.1773751309.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
References: <cover.1773751309.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27944/Wed Mar 18 07:24:13 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_070657_489111_7316225C 
X-CRM114-Status: GOOD (  10.15  )
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

VGhlIEo3MjJTIGdtaWktc2VsIGlzIG1vc3RseSBpZGVudGljYWwgdG8gdGhlIEFNNjQncywgYnV0
IGFkZGl0aW9uYWxseQpzdXBwb3J0cyBTR01JSS4KClNpZ25lZC1vZmYtYnk6IE5vcmEgU2NoaWZm
ZXIgPG5vcmEuc2NoaWZmZXJAZXcudHEtZ3JvdXAuY29tPgotLS0KIGRyaXZlcnMvcGh5L3RpL3Bo
eS1nbWlpLXNlbC5jIHwgMTEgKysrKysrKysrKysKIDEgZmlsZSBjaGFuZ2VkLCAxMSBpbnNlcnRp
b25zKCspCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9waHkvdGkvcGh5LWdtaWktc2VsLmMgYi9kcml2
ZXJzL3BoeS90aS9waHktZ21paS1zZWwuYwppbmRleCA2MjEzYzJiNjAwNWE1Li40ZTI0MmIxODky
MzM0IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS90aS9waHktZ21paS1zZWwuYworKysgYi9kcml2
ZXJzL3BoeS90aS9waHktZ21paS1zZWwuYwpAQCAtMjUxLDYgKzI1MSwxMyBAQCBzdHJ1Y3QgcGh5
X2dtaWlfc2VsX3NvY19kYXRhIHBoeV9nbWlpX3NlbF9zb2NfYW02NTQgPSB7CiAJLnJlZ2ZpZWxk
cyA9IHBoeV9nbWlpX3NlbF9maWVsZHNfYW02NTQsCiB9OwogCitzdGF0aWMgY29uc3QKK3N0cnVj
dCBwaHlfZ21paV9zZWxfc29jX2RhdGEgcGh5X2dtaWlfc2VsX3NvY19qNzIycyA9IHsKKwkudXNl
X29mX2RhdGEgPSB0cnVlLAorCS5yZWdmaWVsZHMgPSBwaHlfZ21paV9zZWxfZmllbGRzX2FtNjU0
LAorCS5leHRyYV9tb2RlcyA9IEJJVChQSFlfSU5URVJGQUNFX01PREVfU0dNSUkpLAorfTsKKwog
c3RhdGljIGNvbnN0CiBzdHJ1Y3QgcGh5X2dtaWlfc2VsX3NvY19kYXRhIHBoeV9nbWlpX3NlbF9j
cHN3NWdfc29jX2o3MjAwID0gewogCS51c2Vfb2ZfZGF0YSA9IHRydWUsCkBAIC0zMDcsNiArMzE0
LDEwIEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgb2ZfZGV2aWNlX2lkIHBoeV9nbWlpX3NlbF9pZF90
YWJsZVtdID0gewogCQkuY29tcGF0aWJsZQk9ICJ0aSxhbTY1NC1waHktZ21paS1zZWwiLAogCQku
ZGF0YQkJPSAmcGh5X2dtaWlfc2VsX3NvY19hbTY1NCwKIAl9LAorCXsKKwkJLmNvbXBhdGlibGUJ
PSAidGksajcyMnMtcGh5LWdtaWktc2VsIiwKKwkJLmRhdGEJCT0gJnBoeV9nbWlpX3NlbF9zb2Nf
ajcyMnMsCisJfSwKIAl7CiAJCS5jb21wYXRpYmxlCT0gInRpLGo3MjAwLWNwc3c1Zy1waHktZ21p
aS1zZWwiLAogCQkuZGF0YQkJPSAmcGh5X2dtaWlfc2VsX2Nwc3c1Z19zb2NfajcyMDAsCi0tIApU
US1TeXN0ZW1zIEdtYkggfCBNw7xobHN0cmHDn2UgMiwgR3V0IERlbGxpbmcgfCA4MjIyOSBTZWVm
ZWxkLCBHZXJtYW55CkFtdHNnZXJpY2h0IE3DvG5jaGVuLCBIUkIgMTA1MDE4Ckdlc2Now6RmdHNm
w7xocmVyOiBEZXRsZWYgU2NobmVpZGVyLCBSw7xkaWdlciBTdGFobCwgU3RlZmFuIFNjaG5laWRl
cgpodHRwczovL3d3dy50cS1ncm91cC5jb20vCgoKLS0gCmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QK
bGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cHM6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
