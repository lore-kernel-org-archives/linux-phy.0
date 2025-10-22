Return-Path: <linux-phy-bounces+linux-phy=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AC137CCD1BC
	for <linux-phy@archiver.kernel.org>; Wed, 22 Oct 2025 15:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpHOrOuu0ohdDJiW9dKM2GmPtOkLdihqtMgoUb6tKtQ=; b=aaEG3eLre/X2ml
	Jg/K449cLPfA3I7GS++/dXniP09Ul3RiOlnKwmY+zD/adnPZr+kdv8GlpjqlUIsFxUB7anxPxS7OB
	5FoEreYmPrfLjB8ybuMBLoOuL/Q+yY3O8UWgrdI4bYKlxw3T2RxfPq51jE+qkJP/3u/s1+oE9yGdV
	0afKkvzYxKzv3K/owe7FrIZXDmzJYkQGhn62G/QfdhPiNaRG/ClpAyrvF0S+2nAHrNxf1uhXpJ+CD
	QQXM6UULz6GxmrBwUENEXqeZurxjGlt0FwUgONUClXSDvMIhNNOH+lrFzCC75dVdcunypEjhuOT0Y
	vc6AyRlKIVkcIFfPjJVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBaw9-00000003R0a-1lMx;
	Wed, 22 Oct 2025 15:39:41 +0000
Received: from smtpout-02.galae.net ([185.246.84.56])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBaw3-00000003Qy0-3NmO
	for linux-phy@lists.infradead.org;
	Wed, 22 Oct 2025 15:39:38 +0000
Received: from smtpout-01.galae.net (smtpout-01.galae.net [212.83.139.233])
	by smtpout-02.galae.net (Postfix) with ESMTPS id 6DD2C1A15E0;
	Wed, 22 Oct 2025 15:39:34 +0000 (UTC)
Received: from mail.galae.net (mail.galae.net [212.83.136.155])
	by smtpout-01.galae.net (Postfix) with ESMTPS id 4473A606DC;
	Wed, 22 Oct 2025 15:39:34 +0000 (UTC)
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPSA id 98720102F2447;
	Wed, 22 Oct 2025 17:39:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=dkim;
	t=1761147573; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ruvqMdrCplni8HhZlBta1yqMIH8AkjPXDgnT9COO8UQ=;
	b=tB/h04vvckbw1gniKDSsazhHB2yJ42mPXE7uQC0N9MoxiWwuG4KXC8WM+AfKtWO+T9GEbC
	8ILMW5J0X7PD9rq3D+FmBOHBxqeex5AgCVSe++PSheOr9RoKdagyCxwsfX5UFA8CBcGnZ+
	PAKB1WL78DKCx7YUJ2F1a5SkP2FlXtbjQ7RTd+cqOvpqTIzbZaA4htMI9Bug4HQFQThlK+
	Ndn/g+C+aU506PSAPTg1Wrx01V2Bz6daTNl0kgWTIHfBg9hO2WVnUsMfJljLNpnfDG4vpp
	PcS5hW/dz09P3gkgl/shKDUY5z6GL4dIblfhECGgZexRHNRl3pOBWIK/g+Tazw==
From: =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
Date: Wed, 22 Oct 2025 17:39:08 +0200
Subject: [PATCH 6/7] MIPS: mobileye: eyeq5: add two Cadence GEM Ethernet
 controllers
MIME-Version: 1.0
Message-Id: <20251022-macb-phy-v1-6-f29f28fae721@bootlin.com>
References: <20251022-macb-phy-v1-0-f29f28fae721@bootlin.com>
In-Reply-To: <20251022-macb-phy-v1-0-f29f28fae721@bootlin.com>
To: Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
 =?utf-8?q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: linux-mips@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
 linux-clk@vger.kernel.org, 
 =?utf-8?q?Beno=C3=AEt_Monin?= <benoit.monin@bootlin.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 =?utf-8?q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>
X-Mailer: b4 0.14.3
X-Last-TLS-Session-Version: TLSv1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_083937_783302_493B01A3 
X-CRM114-Status: UNSURE (   5.98  )
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

QWRkIGJvdGggTUFDQi9HRU0gaW5zdGFuY2VzIGZvdW5kIGluIHRoZSBNb2JpbGV5ZSBFeWVRNSBT
b0MuCgpTaWduZWQtb2ZmLWJ5OiBUaMOpbyBMZWJydW4gPHRoZW8ubGVicnVuQGJvb3RsaW4uY29t
PgotLS0KIGFyY2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS5kdHNpIHwgNDUgKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDQ1IGluc2VydGlv
bnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRz
aSBiL2FyY2gvbWlwcy9ib290L2R0cy9tb2JpbGV5ZS9leWVxNS5kdHNpCmluZGV4IDM2YTczZThh
NjNhMS4uY2VjNWFkODc1MjI4IDEwMDY0NAotLS0gYS9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxl
eWUvZXllcTUuZHRzaQorKysgYi9hcmNoL21pcHMvYm9vdC9kdHMvbW9iaWxleWUvZXllcTUuZHRz
aQpAQCAtNzcsNiArNzcsOCBAQCBhbGlhc2VzIHsKIAkJc2VyaWFsMCA9ICZ1YXJ0MDsKIAkJc2Vy
aWFsMSA9ICZ1YXJ0MTsKIAkJc2VyaWFsMiA9ICZ1YXJ0MjsKKwkJZXRoZXJuZXQwID0gJm1hY2Iw
OworCQlldGhlcm5ldDEgPSAmbWFjYjE7CiAJfTsKIAogCWNwdV9pbnRjOiBpbnRlcnJ1cHQtY29u
dHJvbGxlciB7CkBAIC0yMzEsNiArMjMzLDcgQEAgb2xiOiBzeXN0ZW0tY29udHJvbGxlckBlMDAw
MDAgewogCQkJI2Nsb2NrLWNlbGxzID0gPDE+OwogCQkJY2xvY2tzID0gPCZ4dGFsPjsKIAkJCWNs
b2NrLW5hbWVzID0gInJlZiI7CisJCQkjcGh5LWNlbGxzID0gPDE+OwogCQl9OwogCiAJCWdpYzog
aW50ZXJydXB0LWNvbnRyb2xsZXJAMTQwMDAwIHsKQEAgLTMwNSw2ICszMDgsNDggQEAgZ3BpbzE6
IGdwaW9AMTUwMDAwMCB7CiAJCQkjaW50ZXJydXB0LWNlbGxzID0gPDI+OwogCQkJcmVzZXRzID0g
PCZvbGIgMCAyNj47CiAJCX07CisKKwkJaW9jdS1idXMgeworCQkJY29tcGF0aWJsZSA9ICJzaW1w
bGUtYnVzIjsKKwkJCSNhZGRyZXNzLWNlbGxzID0gPDI+OworCQkJI3NpemUtY2VsbHMgPSA8Mj47
CisJCQlyYW5nZXM7CisJCQlkbWEtY29oZXJlbnQ7CisJCQlkbWEtcmFuZ2VzID0gPDB4MTAgMHgw
MDAwMDAwMCAweDAgMHgwIDB4MTAgMD47CisKKwkJCW1hY2IwOiBldGhlcm5ldEAyYTAwMDAwIHsK
KwkJCQljb21wYXRpYmxlID0gIm1vYmlsZXllLGV5ZXE1LWdlbSI7CisJCQkJcmVnID0gPDB4MCAw
eDAyYTAwMDAwIDB4MCAweDQwMDA+OworCQkJCWludGVycnVwdC1wYXJlbnQgPSA8JmdpYz47CisJ
CQkJLyogT25lIGludGVycnVwdCBwZXIgcXVldWUgKi8KKwkJCQlpbnRlcnJ1cHRzID0gPEdJQ19T
SEFSRUQgMjMgSVJRX1RZUEVfTEVWRUxfSElHSD4sCisJCQkJCSAgICAgPEdJQ19TSEFSRUQgMjMg
SVJRX1RZUEVfTEVWRUxfSElHSD4sCisJCQkJCSAgICAgPEdJQ19TSEFSRUQgMjMgSVJRX1RZUEVf
TEVWRUxfSElHSD4sCisJCQkJCSAgICAgPEdJQ19TSEFSRUQgMjMgSVJRX1RZUEVfTEVWRUxfSElH
SD47CisJCQkJY2xvY2stbmFtZXMgPSAicGNsayIsICJoY2xrIiwgInRzdV9jbGsiOworCQkJCWNs
b2NrcyA9IDwmcGNsaz4sIDwmcGNsaz4sIDwmdHN1X2Nsaz47CisJCQkJbnZtZW0tY2VsbHMgPSA8
JmV0aDBfbWFjPjsKKwkJCQludm1lbS1jZWxsLW5hbWVzID0gIm1hYy1hZGRyZXNzIjsKKwkJCQlw
aHlzID0gPCZvbGIgMD47CisJCQl9OworCisJCQltYWNiMTogZXRoZXJuZXRAMmIwMDAwMCB7CisJ
CQkJY29tcGF0aWJsZSA9ICJtb2JpbGV5ZSxleWVxNS1nZW0iOworCQkJCXJlZyA9IDwweDAgMHgw
MmIwMDAwMCAweDAgMHg0MDAwPjsKKwkJCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZnaWM+OworCQkJ
CS8qIE9uZSBpbnRlcnJ1cHQgcGVyIHF1ZXVlICovCisJCQkJaW50ZXJydXB0cyA9IDxHSUNfU0hB
UkVEIDI0IElSUV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDI0IElS
UV9UWVBFX0xFVkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDI0IElSUV9UWVBFX0xF
VkVMX0hJR0g+LAorCQkJCQkgICAgIDxHSUNfU0hBUkVEIDI0IElSUV9UWVBFX0xFVkVMX0hJR0g+
OworCQkJCWNsb2NrLW5hbWVzID0gInBjbGsiLCAiaGNsayIsICJ0c3VfY2xrIjsKKwkJCQljbG9j
a3MgPSA8JnBjbGs+LCA8JnBjbGs+LCA8JnRzdV9jbGs+OworCQkJCW52bWVtLWNlbGxzID0gPCZl
dGgxX21hYz47CisJCQkJbnZtZW0tY2VsbC1uYW1lcyA9ICJtYWMtYWRkcmVzcyI7CisJCQkJcGh5
cyA9IDwmb2xiIDE+OworCQkJfTsKKwkJfTsKKwogCX07CiB9OwogCgotLSAKMi41MS4xCgoKLS0g
CmxpbnV4LXBoeSBtYWlsaW5nIGxpc3QKbGludXgtcGh5QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cHM6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcGh5Cg==
