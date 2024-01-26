Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2214BC47422
	for <linux-phy@archiver.kernel.org>; Fri, 26 Jan 2024 14:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SlMvUdcRAwMlicETdIL6KWNdexXmce63VxyhIF+y8uQ=; b=GqGfdSLo8MpVc0
	vZWz1gVREbf0Oyh/mXBUnkP49wQOFxKdfTwNWDVB28yEQ4kNkQJ7rGFs2P9CA7qTwyOKmJxGwyxeF
	hr3Xivx2iQXICMPglX0Gysk+xPpSL0gUV/vpEMjSVj0svwNHQA4rXL2fAzxWNjfi/wKh4zYdl+TVI
	/+HN0g7QFZyecxmLWKdftuV4SDFVeOLd+FbY5gHDJxP9Zck3fvmq5nPRcOwkRI2tN/UsUORSQU06y
	2YP1i05cAefEXoZyqG3dE11IiAesNoY9jI2vhYwPwrvOBAIwUXjcWggc/FAltMIuoQnfZoQj6WCgz
	4RlvrzMnEC6hn14QCgNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNMt-00000004OFU-2aTP;
	Fri, 26 Jan 2024 14:39:43 +0000
Received: from relay2-d.mail.gandi.net ([2001:4b98:dc4:8::222])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rTNLR-00000004NJy-124H;
	Fri, 26 Jan 2024 14:38:27 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id A193640010;
	Fri, 26 Jan 2024 14:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1706279891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0in7eUMCy1CUgdfa3NkgNoUarIRy00PjQmN5k2XOfW8=;
	b=XDC7cnmSoyMATdXpU1tgJyrpCGrrYHdLBskthJV5CEbt+4EavYPPm6csGnBGXzgYekdVL8
	E0BQ3R6CohJrEbsZ5/Jp78XV1Kf0+VloyBOdyiDXrEelIyOKn8DSXyzfCCF4ZoJy82Nsnc
	DLJQ726Avyas/qGdXAwuyxPzCSkeApHT20xNdPNcMKgnhn93AvbfW7dMDNouZTS3eG2ePZ
	818Qvb7yNhR2wLyxK3JucldVg7POKnMmQGAx4CB6NhbIN5+Lq0Vq/Tw6YEM7MTx3tsXUUw
	DgvTId9KkB9BrkLAqWPBWdQarOBiBKqUq9Tie7n6H7+0gG4lqaM/sBOq1xWR7g==
From: Thomas Richard <thomas.richard@bootlin.com>
Date: Fri, 26 Jan 2024 15:36:56 +0100
Subject: [PATCH v2 14/15] PCI: j721e: add reset GPIO to struct j721e_pcie
MIME-Version: 1.0
Message-Id: <20240102-j7200-pcie-s2r-v2-14-8e4f7d228ec2@bootlin.com>
References: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
In-Reply-To: <20240102-j7200-pcie-s2r-v2-0-8e4f7d228ec2@bootlin.com>
To: Linus Walleij <linus.walleij@linaro.org>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
 Tony Lindgren <tony@atomide.com>, 
 Haojian Zhuang <haojian.zhuang@linaro.org>, Vignesh R <vigneshr@ti.com>, 
 Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Janusz Krzysztofik <jmkrzyszt@gmail.com>, 
 Andi Shyti <andi.shyti@kernel.org>, Peter Rosin <peda@axentia.se>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Tom Joseph <tjoseph@cadence.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-pci@vger.kernel.org, gregory.clement@bootlin.com, 
 theo.lebrun@bootlin.com, thomas.petazzoni@bootlin.com, u-kumar1@ti.com, 
 Thomas Richard <thomas.richard@bootlin.com>
X-Mailer: b4 0.12.0
X-GND-Sasl: thomas.richard@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240126_063814_062796_9DDE7228 
X-CRM114-Status: GOOD (  13.78  )
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

RnJvbTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1bkBib290bGluLmNvbT4KCkFkZCByZXNldCBH
UElPIHRvIHN0cnVjdCBqNzIxZV9wY2llLCBzbyBpdCBjYW4gYmUgdXNlZCBhdCBzdXNwZW5kIGFu
ZApyZXN1bWUgc3RhZ2VzLgoKU2lnbmVkLW9mZi1ieTogVGjDqW8gTGVicnVuIDx0aGVvLmxlYnJ1
bkBib290bGluLmNvbT4KU2lnbmVkLW9mZi1ieTogVGhvbWFzIFJpY2hhcmQgPHRob21hcy5yaWNo
YXJkQGJvb3RsaW4uY29tPgotLS0KIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2kt
ajcyMWUuYyB8IDEyICsrKysrKy0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygr
KSwgNiBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2Nh
ZGVuY2UvcGNpLWo3MjFlLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2NhZGVuY2UvcGNpLWo3
MjFlLmMKaW5kZXggOWIzNDNhNDZkYTExLi40NzcyNzVkNzIyNTcgMTAwNjQ0Ci0tLSBhL2RyaXZl
cnMvcGNpL2NvbnRyb2xsZXIvY2FkZW5jZS9wY2ktajcyMWUuYworKysgYi9kcml2ZXJzL3BjaS9j
b250cm9sbGVyL2NhZGVuY2UvcGNpLWo3MjFlLmMKQEAgLTU0LDYgKzU0LDcgQEAgc3RydWN0IGo3
MjFlX3BjaWUgewogCXN0cnVjdCBjbGsJCSpyZWZjbGs7CiAJdTMyCQkJbW9kZTsKIAl1MzIJCQlu
dW1fbGFuZXM7CisJc3RydWN0IGdwaW9fZGVzYwkqcmVzZXRfZ3BpbzsKIAl2b2lkIF9faW9tZW0J
CSp1c2VyX2NmZ19iYXNlOwogCXZvaWQgX19pb21lbQkJKmludGRfY2ZnX2Jhc2U7CiAJdTMyCQkJ
bGlua2Rvd25faXJxX3JlZ2ZpZWxkOwpAQCAtMzU5LDcgKzM2MCw2IEBAIHN0YXRpYyBpbnQgajcy
MWVfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCXN0cnVjdCBqNzIx
ZV9wY2llICpwY2llOwogCXN0cnVjdCBjZG5zX3BjaWVfcmMgKnJjID0gTlVMTDsKIAlzdHJ1Y3Qg
Y2Ruc19wY2llX2VwICplcCA9IE5VTEw7Ci0Jc3RydWN0IGdwaW9fZGVzYyAqZ3Bpb2Q7CiAJdm9p
ZCBfX2lvbWVtICpiYXNlOwogCXN0cnVjdCBjbGsgKmNsazsKIAl1MzIgbnVtX2xhbmVzOwpAQCAt
NDY4LDkgKzQ2OCw5IEBAIHN0YXRpYyBpbnQgajcyMWVfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQogCiAJc3dpdGNoIChtb2RlKSB7CiAJY2FzZSBQQ0lfTU9ERV9SQzoK
LQkJZ3Bpb2QgPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChkZXYsICJyZXNldCIsIEdQSU9EX09V
VF9MT1cpOwotCQlpZiAoSVNfRVJSKGdwaW9kKSkgewotCQkJcmV0ID0gUFRSX0VSUihncGlvZCk7
CisJCXBjaWUtPnJlc2V0X2dwaW8gPSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbChkZXYsICJyZXNl
dCIsIEdQSU9EX09VVF9MT1cpOworCQlpZiAoSVNfRVJSKHBjaWUtPnJlc2V0X2dwaW8pKSB7CisJ
CQlyZXQgPSBQVFJfRVJSKHBjaWUtPnJlc2V0X2dwaW8pOwogCQkJaWYgKHJldCAhPSAtRVBST0JF
X0RFRkVSKQogCQkJCWRldl9lcnIoZGV2LCAiRmFpbGVkIHRvIGdldCByZXNldCBHUElPXG4iKTsK
IAkJCWdvdG8gZXJyX2dldF9zeW5jOwpAQCAtNTA0LDkgKzUwNCw5IEBAIHN0YXRpYyBpbnQgajcy
MWVfcGNpZV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQkgKiBtb2RlIGlz
IHNlbGVjdGVkIHdoaWxlIGVuYWJsaW5nIHRoZSBQSFkuIFNvIGRlYXNzZXJ0IFBFUlNUIwogCQkg
KiBhZnRlciAxMDAgdXMuCiAJCSAqLwotCQlpZiAoZ3Bpb2QpIHsKKwkJaWYgKHBjaWUtPnJlc2V0
X2dwaW8pIHsKIAkJCXVzbGVlcF9yYW5nZSgxMDAsIDIwMCk7Ci0JCQlncGlvZF9zZXRfdmFsdWVf
Y2Fuc2xlZXAoZ3Bpb2QsIDEpOworCQkJZ3Bpb2Rfc2V0X3ZhbHVlX2NhbnNsZWVwKHBjaWUtPnJl
c2V0X2dwaW8sIDEpOwogCQl9CiAKIAkJcmV0ID0gY2Ruc19wY2llX2hvc3Rfc2V0dXAocmMsIHRy
dWUpOwoKLS0gCjIuMzkuMgoKCi0tIApsaW51eC1waHkgbWFpbGluZyBsaXN0CmxpbnV4LXBoeUBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHBzOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXBoeQo=
