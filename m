Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85D10E9A77D
	for <linux-phy@archiver.kernel.org>; Tue, 24 Mar 2026 12:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oh8IiiXigLeJrSl4lJmXZsUwibHild9gz/2VJxHLQYU=; b=eW3qqG8dlz4l5g
	JfDac1Ddiu6IDrCdNCamsacIjZ2SvxDXgbdi+1+uIVZSNotVjSYebfPttjdelDwmI3TAjn+RpzXzF
	/rdUuNeyc4punruI7maRFoG3LGjVBq/gZ3E6hNYJVe3ANLnaUuCXs3RSIjuLBwllDkNi7b8LqEfVN
	v1chGmVTjpWAeOlmoZ5jg6bmn+QZAUjSf/l1LFPVtlFe7P0RfcvBRFTnSJTjQGfB05F+IdYnUMdRg
	MZXAkNB24cSx56RLbKa7FSVZNJmfjkgE5D0Zyese4vDxBQ5RFXkJFJEUomvMg2E52gEVnzv10gSdQ
	QvHTr2rPWpLclYpLxMkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50uC-00000001NgH-0w37;
	Tue, 24 Mar 2026 12:30:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50u2-00000001NZP-2oGy;
	Tue, 24 Mar 2026 12:30:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=CDZ1x6uk3cX7ikuybSPnahjbUbj3LWWbgoH1EL3EOnw=; b=iJflveCla3HP3fuUWmk2XHiKK8
	nzyU602QcRVrdKtpoEwGa1Nr0kBzRkpBTshIo+iBRCdQizHce6ZmwVSuKXQKk0R0k7U3vSc5807HL
	QGPYOfI2QcuxVGI4E2IaQObFzW4x2c1hSTno1nj6VkfoXFw4k7+1fYCwKuzW8XQ+cqEk1w282rrnJ
	DCf20y03puV0Et3JacHVx3BV9P3RjJnRVabKJLLrcoDKuQ+xT1SNF7mMOGrg/u4GJPDEXUKDyRVDR
	yubs4j1Jk41dZufSsTdvk83c64Wwstt2IKs6V7NqD/hIToMVWWIkcaGKBZLySmDXS1XhUvkTlhPpu
	lbvmdXUw==;
Received: from www537.your-server.de ([188.40.3.216])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w50tz-000000041pu-0xi3;
	Tue, 24 Mar 2026 12:30:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=ew.tq-group.com; s=default2602; h=Content-Transfer-Encoding:Content-Type:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender
	:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID;
	bh=CDZ1x6uk3cX7ikuybSPnahjbUbj3LWWbgoH1EL3EOnw=; b=pZ1gO40nb1jslf3pYC6A5RFAaV
	6AwZaIOLKcaf3Eynyj6/Ihc2krrJXm31+Yn/dJb2+DjucmUzTNOu4zUAMrpmQgoRx4FWYzrkYlkba
	EIKe5FBlQGbjdKxJwe+VmXiU3AuMK7NFGaMc5Qf1EHoDa0NmQtJLZWR7Nh6o269fMpkJy7OvqlJPQ
	aEbGnqRWU/DvVe2FfSH6sB4INc8YbnGU665B98S8hq49UiMalOO9z0Qb1AR2o/erv9t23sepHHcGJ
	HWHSvFQwA4pshCvoWGk29aCpH80RP+sCyeVI75UYLlvO3o46/C9w6PO1U+coMVfBPvbvHb8CyVryE
	WaB1KsJQ==;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www537.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96.2)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50ts-0005qP-1N;
	Tue, 24 Mar 2026 13:30:24 +0100
Received: from localhost ([127.0.0.1])
	by sslproxy05.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <nora.schiffer@ew.tq-group.com>)
	id 1w50ts-000Pna-0u;
	Tue, 24 Mar 2026 13:30:23 +0100
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
Subject: [PATCH v2 5/7] phy: ti: gmii-sel: add support for J722S SoC family
Date: Tue, 24 Mar 2026 13:29:41 +0100
Message-ID: <5d00697f133cd33a1df62ac7ebf73e507e49ed2f.1774354734.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
References: <cover.1774354734.git.nora.schiffer@ew.tq-group.com>
MIME-Version: 1.0
X-Virus-Scanned: Clear (ClamAV 1.4.3/27950/Tue Mar 24 07:24:19 2026)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260324_123031_566121_F53DC0DE 
X-CRM114-Status: GOOD (  10.32  )
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
